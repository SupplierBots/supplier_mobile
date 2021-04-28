(() => {
  (async () => {
    const product = $PRODUCT$;
    const colors = $COLORS$;
    const anySize = $ANY_SIZE$;
    const anyColor = $ANY_COLOR$;
    const productSize = $SIZE$;
    const paymentDetails = $PAYMENT_DETAILS$;
    const delays = $DELAYS$;
    const region = $REGION$;

    const sizeToFind = convertSizes(productSize.primary, region);

    const soldOutStyles = [];
    const itemDetails = {
      name: "",
      style: "",
      size: "N/A",
      image: "https://i.imgur.com/fUUYrFx.png", //Logo fallback
    };
    const timestamps = {
      start: 0,
      atc: 0,
      finished: 0,
      submit: 0,
    };
    const processingDetails = {
      captchaToken: "",
      billingErrors: "None",
      slug: "",
      orderNumber: "#Unknown",
      waitedForCaptchaLoad: false,
      processingAttempt: 0,
      highTraffic: false,
      bParameter: false,
      queued: false,
      cca: false,
    };
    const modifiedButtons = [];
    let stockRefreshTimestamp = Date.now();

    window.addEventListener(
      "hashchange",
      () => {
        if (location.hash.includes("cart")) {
          sendTaskResult("failed", "Sold out");
        }
      },
      false
    );

    window.__nativeCache.onResponse((response) => {
      if (/.*(checkout|status).json/.test(response.url)) {
        try {
          const data = JSON.parse(response.text);
          if (!data.status) return;
          parseOrderStatus(data);
        } catch {}
      } else if (/stock/.test(response.url)) {
        stockRefreshTimestamp = Date.now();
      }
    });

    if (document.readyState === "complete") {
    } else {
      window.addEventListener("DOMContentLoaded", main);
    }

    await main();
    async function main() {
      await waitForMainScriptLoad();

      if (!document.location.href.includes("product")) {
        const product = await findProduct();
        await initialize();
        await loadProduct(product);
      } else {
        await initialize();
      }

      timestamps.start = Date.now();
      await waitForProduct();
      await wait(400);

      let atcSuccess = false;
      while (!atcSuccess) {
        const nextAvailableStyle = selectStyle();
        if (!nextAvailableStyle) {
          await waitForRestock();
          return;
        }
        itemDetails.style = nextAvailableStyle.attributes.name;
        await loadStyle(nextAvailableStyle);
        atcSuccess = await addToCart(nextAvailableStyle);
        if (!atcSuccess) {
          soldOutStyles.push(nextAvailableStyle.attributes.name);
        }
      }
      timestamps.atc = Date.now();
      await checkout();
      timestamps.finished = Date.now();
    }

    //* STEPS
    async function findProduct() {
      updateStatus("Waiting for product");
      let item = findItem(product);

      if (!item) {
        try {
          await refreshStock();
          item = findItem(product);
        } catch {}
      }

      if (!item) {
        return await cleanRefresh();
      }
      updateStatus("Product found");
      return item;
    }

    async function loadProduct(item) {
      queryAllElements({
        selector: "li",
      })
        .find((el) => el.children[0].innerHTML === item.category)
        ?.click();

      await wait(400);

      updateStatus("Loading product details");

      queryAllElements({
        selector: "li",
      })
        .find((el) => {
          const nameChild = queryElementChild(el, {
            selector: ".name",
          });
          if (!nameChild) return false;
          return nameChild.innerText === item.name;
        })
        ?.click();
    }

    async function addToCart(style) {
      const availableSizes = style.attributes.sizes.models.filter(
        (s) => s.attributes.stock_level !== 0
      );

      const size =
        style.attributes.sizes.models.length > 1 &&
        productSize != "None/One-Size"
          ? selectSize(availableSizes, sizeToFind, anySize)
          : availableSizes[0];

      if (!size) {
        return false;
      }

      if (
        style.attributes.sizes.models.length > 1 &&
        productSize !== "None/One-Size"
      ) {
        await selectOption(size.attributes.name);
        itemDetails.size = size.attributes.name;
      }

      updateStatus("Adding to cart");
      productDetailView.addToCartButton.el.click();

      const removeButtonSelectors = [
        {
          selector: ".cart-button",
          innerText: "remove",
        },
        {
          selector: ".delete",
        },
      ];

      const soldOutButtonSelectors = [
        {
          selector: ".cart-button",
          innerText: "sold",
        },
        {
          selector: ".sold-out",
        },
      ];

      let removeButton = findElement(removeButtonSelectors);
      let soldOutButton = findElement(soldOutButtonSelectors);

      const timeout = 5000;
      let waitingTime = 0;
      while (!removeButton && !soldOutButton) {
        lookForModifiedButtons([
          "continue",
          "confirm",
          "proceed",
          "add",
          "accept",
        ]);

        await wait(250);
        waitingTime += 250;
        if (waitingTime >= timeout) {
          window.location.reload();
          return false;
        }

        removeButton = findElement(removeButtonSelectors);
        soldOutButton = findElement(soldOutButtonSelectors);
      }

      if (soldOutButton) {
        return false;
      }
      try {
        itemDetails.image = productDetailView.model.attributes.selectedStyle.attributes.image_url.replace(
          "//",
          "https://"
        );
      } catch {}
      await wait(300);
      return true;
    }

    async function checkout() {
      updateStatus("Loading checkout");
      const checkoutButtonSelectors = [
        {
          selector: "a",
          innerText: "CHECK",
        },
        {
          selector: "button",
          innerText: "CHECK",
        },
      ];
      await waitForElement(checkoutButtonSelectors);
      findElement(checkoutButtonSelectors).click();

      const creditCartSelectors = [
        {
          selector: "[placeholder*='credit card']",
        },
        {
          selector: "[maxlength='19']",
        },
      ];

      await waitForElement(creditCartSelectors);
      await wait(150);
      if (region === "us") {
        await selectOption(paymentDetails.state);
      }
      await wait(150);
      updateStatus("Checkout autofill");

      findElement(creditCartSelectors).scrollIntoView();
      const checkoutLoadTimestamp = Date.now();

      await type(creditCartSelectors, paymentDetails.number.replace(/ /g, ""));

      await selectOption(paymentDetails.month);
      await selectOption(paymentDetails.year);

      const cvvSelectors = [
        {
          selector: "[placeholder*='cvv']",
        },
        {
          selector: "[maxlength='4']",
        },
      ];
      await type(cvvSelectors, paymentDetails.cvv);

      const termsSelectors = [
        {
          selector: "label",
          innerText: "and agree",
        },
        {
          selector: "label",
          innerText: "return policy",
        },
      ];
      findElement(termsSelectors).click();

      const autofillTime = Date.now() - checkoutLoadTimestamp;
      if (autofillTime < delays.checkout) {
        updateStatus("Checkout delay");
        const requiredDelay = delays.checkout - autofillTime;
        console.log(requiredDelay);
        await wait(requiredDelay);
      }

      const processButtonSelectors = [
        {
          selector: "button",
          innerText: "process",
        },
        {
          selector: "button",
          innerText: "payment",
        },
      ];

      await waitForCaptchaRenderer();
      await waitForElement(processButtonSelectors);

      watchCaptchaChallenge();
      findElement(processButtonSelectors).click();
      lookForModifiedButtons([
        "checkout",
        "finish",
        "place",
        "submit",
        "continue",
        "confirm",
        "proceed",
        "accept",
        "charge",
        "order",
      ]);
      updateStatus("Waiting for response");
    }
    // STEPS *

    //* PAGE FUNCTIONS

    async function loadStyle(style) {
      findElement([
        {
          selector: `[id*='${style.attributes.id}'] img`,
        },
      ]).click();
      await waitForElement([
        {
          selector: "p",
          innerText: style.attributes.name,
        },
      ]);
      await wait(200);
    }

    async function waitForProduct() {
      const priceSelector = {
        selector: ".price",
      };
      let price = findElement([priceSelector]);
      let waitingTime = 0;
      while (!price || price.innerText.length <= 1) {
        await wait(250);
        waitingTime += 250;

        if (waitingTime >= 2000) {
          window.location.reload();
        }
        price = findElement([priceSelector]);
      }
      itemDetails.name = productDetailView.model.attributes.name;
    }

    async function waitForCaptchaRenderer() {
      const selector = [
        {
          selector: "#g-recaptcha, .g-recaptcha",
        },
      ];
      while (!findElement(selector)) {
        processingDetails.waitedForCaptchaLoad = true;
        await wait(250);
      }
    }

    async function watchCaptchaChallenge() {
      const orginalCallback = window.recaptchaCallback;
      window.recaptchaCallback = (res) => {
        updateStatus("Waiting for response");
        setTaskAction("captcha-solved");
        processingDetails.captchaToken = res;
        timestamps.submit = Date.now();
        orginalCallback(res);
      };

      const iframeSelector = {
        selector: "iframe[src*='recaptcha/api2/b']",
      };
      await waitForElement([iframeSelector]);
      const captchaIFrame = queryElement(iframeSelector);
      while (captchaIFrame.style.height == "100%") {
        await wait(250);
      }

      if (captchaIFrame.style.height != "0px") {
        setTaskAction("captcha");
      }
    }

    function lookForModifiedButtons(names) {
      for (const name of names) {
        const button = queryElement({
          selector: "button",
          innerText: name,
        });
        if (!button) continue;
        modifiedButtons.push(name);
        button.click();
        return;
      }
    }

    async function waitForRestock() {
      setTaskAction("enable-restocks");
      updateStatus("Waiting for restock");
      await refresh();
    }

    function selectSize(sizes, sizeToFind, anySize) {
      const primary = sizes.find((s) =>
        s.attributes.name.toLowerCase().includes(sizeToFind.toLowerCase())
      );
      if (primary || !anySize || sizes.length === 0) return primary;

      switch (productSize.anySizeOption) {
        case "The Smallest": {
          return sizes[0];
        }
        case "The Largest": {
          return sizes[sizes.length - 1];
        }
        case "Random": {
          return sizes[Math.floor(Math.random() * sizes.length)];
        }
      }
    }

    function selectStyle() {
      const styles = productDetailView.model.attributes.styles.models;

      const filteredStyles = styles.filter(
        (s) =>
          !soldOutStyles.includes(s.attributes.name) &&
          !colors.negative.some((c) =>
            s.attributes.name.toLowerCase().includes(c)
          )
      );

      if (filteredStyles.length === 0) {
        return null;
      }

      const primary = filteredStyles.find((s) =>
        colors.positive.some((c) => s.attributes.name.toLowerCase().includes(c))
      );

      const secondary =
        filteredStyles[Math.floor(Math.random() * filteredStyles.length)];

      if (colors.positive.length == 0) {
        return secondary;
      }

      if (primary || !anyColor) {
        return primary;
      }

      return secondary;
    }

    function findItem(product) {
      const stock = Supreme.categories.models.flatMap((c) => {
        return c.attributes.products.models.map((p) => ({
          name: p.attributes.name,
          category: c.attributes.name,
          product: p,
        }));
      });
      return stock.find((item) => isProductMatch(item.name, product.keywords));
    }

    function isProductMatch(name, { positive, negative, multi }) {
      name = name.toLowerCase();
      if (!positive.every((p) => name.includes(p))) return false;
      if (negative.some((n) => name.includes(n))) return false;
      if (!multi) return true;
      for (const keyword of multi) {
        const words = keyword.split(" | ");
        if (!words.some((w) => name.includes(w))) return false;
      }
      return true;
    }
    // PAGE FUNCTIONS *

    //* INITIALIZATION
    async function waitForMainScriptLoad() {
      while (typeof Supreme === "undefined") {
        await wait(100);
      }
    }
    async function initialize() {
      updateStatus("Waiting for resources");
      while (document.readyState !== "complete") {
        await wait(100);
      }
      let loadingTime = 0;
      const timeout = 2000;
      while (getCookie("ntbcc").length === 0 && loadingTime < timeout) {
        await wait(100);
        loadingTime += 100;
      }
      if (typeof Supreme === "undefined") return await cleanRefresh();
      $.fx.off = true;
      //Disable animations
    }
    //INITIALIZATION *

    //* ELEMENTS QUERIES
    function queryElement({ selector, innerText }) {
      const elements = [...window.__nativeCache.querySelectorAll(selector)];
      if (innerText) {
        const filtered = elements.filter((e) =>
          e.innerText.includes(innerText)
        );
        return filtered[0];
      }
      return elements[0];
    }

    function queryAllElements({ selector, innerText }) {
      const elements = [...window.__nativeCache.querySelectorAll(selector)];
      if (innerText) {
        return elements.filter((e) =>
          e.innerText.trim().toLowerCase().includes(innerText.toLowerCase())
        );
      }
      return elements;
    }

    function queryElementChild(element, { selector, innerText }) {
      const elements = window.__nativeCache.elementQuerySelectorAll.bind(
        element
      )(selector);
      if (innerText) {
        const filtered = elements.filter((e) =>
          e.innerText.includes(innerText)
        );
        return filtered[0];
      }
      return elements[0];
    }
    //ELEMENTS QUERIES *

    //* CORE
    function findElement(selectors) {
      for (const selector of selectors) {
        const element = queryAllElements(selector);
        if (element.length > 0) return element[0];
      }
      return null;
    }

    async function waitForElement(selectors) {
      while (!findElement(selectors)) {
        await wait(250);
      }
    }

    async function refresh() {
      await wait(delays.refresh);
      window.location.reload();
    }

    async function cleanRefresh() {
      await wait(delays.refresh);
      setTaskAction("clean-refresh");
      await wait(1000);
    }

    function updateStatus(status) {
      setTaskAction("update-status", status);
    }

    function sendTaskResult(status, message) {
      setTaskAction("task-result", {
        status,
        message,
        itemDetails,
        timestamps,
        modifiedButtons,
        processingDetails,
      });
    }

    function setTaskAction(action, details = "") {
      window.flutter_inappwebview.callHandler("supplierConnection", {
        action,
        details,
      });
    }

    function parseOrderStatus(response) {
      if (response.id) {
        processingDetails.orderNumber = `#${response.id}`;
      }

      switch (response.status) {
        case "cardinal_queued":
        case "queued": {
          if (!processingDetails.slug && response.slug) {
            processingDetails.slug = response.slug;
          }
          processingDetails.queued = true;
          processingDetails.processingAttempt++;
          updateStatus(`Processing (${processingDetails.processingAttempt})`);
          break;
        }
        case "paid": {
          sendTaskResult("paid", "Success");
          break;
        }
        case "dup": {
          sendTaskResult("dup", "Duplicate order");
          break;
        }
        case "blacklisted":
        case "canada":
        case "blocked_country": {
          sendTaskResult("blacklisted", "Blacklisted");
          break;
        }
        case "cca": {
          processingDetails.cca = true;
          processingDetails.processingAttempt++;
          updateStatus(`Processing (${processingDetails.processingAttempt})`);
          try {
            $.post(
              `/checkout/${processingDetails.slug}/cardinal.json`,
              $("#mobile_checkout_form").serialize(),
              function (e) {
                e["status"] == "failed"
                  ? ($("body")
                      .removeClass("checkout_page")
                      .addClass("cart-confirm"),
                    $("#content").replaceWith(e.page))
                  : e["status"] == "cardinal_queued" &&
                    window.pollOrderStatus(e.slug);
              }
            );
          } catch {}
          break;
        }
        case "500":
        case "404":
        case "outOfStock":
        case "failed": {
          const message =
            response.status === "outOfStock" ? "Sold out" : "Card decline";
          processingDetails.highTraffic =
            response.page?.includes("high traffic") ?? false;
          processingDetails.bParameter = !!response.b;
          if (response.errors) {
            try {
              processingDetails.billingErrors = JSON.stringify(response.errors);
            } catch {}
          }
          sendTaskResult(response.status, message);
          break;
        }
      }
    }

    async function refreshStock() {
      const currentTimestamp = stockRefreshTimestamp;
      const timeout = 1000;

      try {
        window.loadDataForPoll();

        //Wait for timestamp change
        let loadingTime = 0;
        while (
          currentTimestamp === stockRefreshTimestamp &&
          loadingTime < timeout
        ) {
          await wait(50);
          loadingTime += 50;
        }
        await wait(100);
      } catch {}
    }
    //CORE *

    //* UTILS
    async function wait(milliseconds) {
      await new Promise((resolve) => setTimeout(resolve, milliseconds));
    }

    function getRandomRange(min, max) {
      return Math.random() * (max - min) + min;
    }

    function getCookie(cname) {
      const name = cname + "=";
      const decodedCookie = decodeURIComponent(document.cookie);
      const ca = decodedCookie.split(";");
      for (let i = 0; i < ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) == " ") {
          c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
          return c.substring(name.length, c.length);
        }
      }
      return "";
    }

    function convertSizes(size, region) {
      const match = size.match(/US ([\d|\.]+)/);
      if (!match) return size;
      return region === "eu" ? size : match[1];
    }
    //UTILS *

    //* INTERACTIONS
    async function type(fieldSelectors, text) {
      const element = findElement(fieldSelectors);
      if (!element) return;
      focusElement(element);
      for (const character of text.split("")) {
        window.__nativeCache.execCommand("insertHTML", false, character);
        await wait(getRandomRange(35, 65));
      }
      element.dispatchEvent(
        new Event("change", {
          bubbles: true,
        })
      );
    }

    async function selectOption(value) {
      const options = queryAllElements({
        selector: "option",
      });

      const option = options.find(
        (o) => o.innerText.trim().toLowerCase() === value.trim().toLowerCase()
      );

      if (!option) return;

      const select = option.parentNode;
      select.value = option.value;
      select.dispatchEvent(
        new Event("change", {
          bubbles: true,
        })
      );
      await wait(100);
    }

    function focusElement(element) {
      window.__nativeCache.elementFocus.bind(element)();
    }
    //INTERACTIONS *
  })();
})();

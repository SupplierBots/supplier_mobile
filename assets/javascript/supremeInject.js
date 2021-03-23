(() => {
  (async () => {
    updateStatus("Script loaded");

    if (typeof Supreme === "undefined") return await reload();

    const product = $PRODUCT$;
    const colors = $COLORS$;
    const anySize = $ANY_SIZE$;
    const anyColor = $ANY_COLOR$;
    const productSize = $SIZE$;
    const paymentDetails = $PAYMENT_DETAILS$;

    const restocks = {
      enabled: true,
      delay: 750,
    };

    const region = "eu";
    const items = [];

    const sizeToFind = productSize.includes("SHOE")
      ? convertShoeSize(productSize, region)
      : productSize;

    let item = findItem(product);

    if (!item) {
      return await reload();
    }

    const startTime = Date.now();

    updateStatus("Product found");

    items.push(item.name);

    findElement([`li:contains('${item.category}')`]).click();
    await waitForElement(["li:has(img)"]);
    await sleep(400);
    updateStatus(item.name);

    findElement([`li:contains('${item.name}')`]).click();
    await waitForProduct();
    await sleep(400);

    const selectedStyle = selectStyle(
      productDetailView.model.attributes.styles,
      colors,
      anyColor
    );
    if (!selectedStyle) {
      if (!restocks.enabled) {
        updateStatus("Product sold out");
        return;
      }
      waitForRestock();
      return;
    }

    findElement([`[id*='${selectedStyle.attributes.id}'] img`]).click();
    await waitForElement([`p:contains('${selectedStyle.attributes.name}')`]);
    await sleep(200);

    const availableSizes = selectedStyle.attributes.sizes.models.filter(
      (s) => s.attributes.stock_level !== 0
    );

    const size =
      selectedStyle.attributes.sizes.models.length > 1 &&
      productSize != "None/One-Size"
        ? selectSize(availableSizes, sizeToFind, anySize)
        : availableSizes[0];

    if (!size) {
      if (!restocks.enabled) {
        updateStatus("Size sold out");
        return;
      }
      waitForRestock();
      return;
    }

    if (
      selectedStyle.attributes.sizes.models.length > 1 &&
      productSize != "None/One-Size"
    ) {
      await selectOption(size.attributes.name);
    }

    productDetailView.addToCartButton.$el.click();
    lookForModifiedButtons();
    const checkoutButtonSelectors = [
      'a:contains("CHECK")',
      'button:contains("CHECK")',
    ];

    await waitForElement(checkoutButtonSelectors);
    await sleep(300);
    findElement(checkoutButtonSelectors).click();

    const cardHeaderSelectors = [
      "h2:contains('card information')",
      "h3:contains('card information')",
      "h1:contains('card information')",
      "p:contains('card information')",
    ];

    await waitForElement(cardHeaderSelectors);
    await sleep(300);

    updateStatus("Filling in checkout");
    findElement(cardHeaderSelectors)[0].scrollIntoView();

    await type(
      ["[placeholder*='credit card']", "[maxlength='19']"],
      paymentDetails.number
    );
    await selectOption(paymentDetails.month);
    await selectOption(paymentDetails.year);
    await type(["[placeholder*='cvv']", "[maxlength='4']"], paymentDetails.cvv);
    findElement([
      "label:contains('and agree')",
      "label:contains('return policy')",
    ]).click();

    updateStatus("Checkout delay");
    await sleep(getRandomRange(4000, 5000));

    window.addEventListener(
      "hashchange",
      () => {
        const hash = location.hash;
        if (hash.includes("chargeError")) {
          window.flutter_inappwebview.callHandler("supplierConnection", {
            action: "failed",
            details: "Charge error",
          });
        } else if (hash.includes("confirmOrder")) {
          window.flutter_inappwebview.callHandler("supplierConnection", {
            action: "success",
          });
        } else if (hash.includes("cart")) {
          window.flutter_inappwebview.callHandler("supplierConnection", {
            action: "failed",
            details: "Sold out",
          });
        }
      },
      false
    );

    findElement([
      "button:contains('process')",
      "button:contains('payment')",
    ]).click();
    updateStatus("Processing");
    watchCaptchaChallenge();

    async function waitForProduct() {
      let price = findElement([".price"]);
      while (!price || price.text().length <= 0) {
        await sleep(250);
        price = findElement([".price"]);
      }
    }

    async function watchCaptchaChallenge() {
      const iframeSelector = "iframe[src*='recaptcha/api2/b']";
      await waitForElement([iframeSelector]);
      const captchaIFrame = $(iframeSelector)[0];
      while (captchaIFrame.style.height == "100%") {
        await new Promise((r) => setTimeout(r, 250));
      }

      if (captchaIFrame.style.height != "0px") {
        const orginalCallback = window.recaptchaCallback;
        window.recaptchaCallback = (res) => {
          updateStatus("Processing");
          window.flutter_inappwebview.callHandler("supplierConnection", {
            action: "captcha-solved",
          });
          orginalCallback(res);
        };

        window.flutter_inappwebview.callHandler("supplierConnection", {
          action: "captcha",
        });
      }
    }

    function updateStatus(status) {
      window.flutter_inappwebview.callHandler("supplierConnection", {
        action: "update-status",
        details: status,
      });
    }

    function findElement(selectors) {
      for (const selector of selectors) {
        const element = $(selector);
        if (element.length > 0) return element;
      }
      return null;
    }

    async function type(fieldSelectors, text) {
      const element = findElement(fieldSelectors);
      if (!element) return;
      element.focus();
      for (const character of text.split("")) {
        document.execCommand("insertHTML", false, character);
        await sleep(getRandomRange(35, 65));
      }
      createChangeEvent(element);
    }

    async function selectOption(option) {
      const optionElement = $(`option:contains("${option}")`);
      const select = optionElement.parent();
      select.val(optionElement.val());
      createChangeEvent(select);
      await sleep(100);
    }

    function createChangeEvent(element) {
      element.change();
    }

    function lookForModifiedButtons() {
      const names = ["continue", "confirm", "proceed", "add", "accept"];

      for (const name of names) {
        var button = $(`button:contains("${name}")`);
        if (button.length === 0) continue;
        button.click();
        return;
      }
    }

    async function waitForElement(selectors) {
      while (!findElement(selectors)) {
        await sleep(250);
      }
    }

    function getRandomRange(min, max) {
      return Math.random() * (max - min) + min;
    }

    async function reload() {
      await sleep(1500);
      window.location.reload();
    }

    async function waitForRestock() {
      updateStatus("Waiting for restock");
      await sleep(restocks.delay);
      window.location.reload();
    }

    function selectSize(sizes, sizeToFind, anySize) {
      const primary = sizes.find((s) =>
        s.attributes.name.toLowerCase().includes(sizeToFind.toLowerCase())
      );
      if (primary || !anySize || sizes.length === 0) return primary;

      return sizes[Math.floor(Math.random() * sizes.length)];
    }

    function selectStyle(styles, colors, anyColor) {
      const primary = findMatchingStyle(colors, styles);

      if (primary || !anyColor) return primary;

      const secondary = styles[Math.floor(Math.random() * styles.length)];
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
      return stock.find((item) => isMatch(item.name, product));
    }

    async function sleep(ms) {
      await new Promise((resolve) => setTimeout(resolve, ms));
    }

    async function fetchStyles(item) {
      const styles = await Promise.race([
        stylesListener(item),
        stylesRequest(item),
      ]);
      if (!styles) {
        return null;
      }
      const availableStyles = styles.filter((st) =>
        st.attributes.sizes.models.some((s) => s.attributes.stock_level !== 0)
      );
      return availableStyles;
    }

    async function stylesListener(item) {
      while (!item.attributes.styles) {
        await sleep(10);
      }

      return item.attributes.styles.models;
    }

    async function stylesRequest(item) {
      while (!item.attributes.styles) {
        item.fetch();
        await sleep(1000);
      }
    }

    function isMatch(name, { positive, negative, multi }) {
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

    function findMatchingStyle(colors, styles) {
      for (let targetColor of colors) {
        const match = styles.find((s) =>
          s.attributes.name.toLowerCase().includes(targetColor)
        );
        if (!match) continue;
        return match;
      }
      return null;
    }
    function convertShoeSize(size, region) {
      switch (size) {
        case "SHOE-US4": {
          return region === "eu" ? "US 4 / UK 3.5" : "4";
        }
        case "SHOE-US4.5": {
          return region === "eu" ? "US4.5 / UK 4" : "4.5";
        }
        case "SHOE-US5": {
          return region === "eu" ? "US 5 / UK 4.5" : "5";
        }
        case "SHOE-US5.5": {
          return region === "eu" ? "US 5.5 / UK 5" : "5.5";
        }
        case "SHOE-US6": {
          return region === "eu" ? "US 6 / UK 5.5" : "6";
        }
        case "SHOE-US6.5": {
          return region === "eu" ? "US 6.5 / UK 6" : "6.5";
        }
        case "SHOE-US7": {
          return region === "eu" ? "US 7 / UK 6" : "7";
        }
        case "SHOE-US7.5": {
          return region === "eu" ? "US 7.5 / UK 6.5" : "7.5";
        }
        case "SHOE-US8": {
          return region === "eu" ? "US 8 / UK 7" : "8";
        }
        case "SHOE-US8.5": {
          return region === "eu" ? "US 8.5 / UK 7.5" : "8.5";
        }
        case "SHOE-US9": {
          return region === "eu" ? "US 9 / UK 8" : "9";
        }
        case "SHOE-US9.5": {
          return region === "eu" ? "US 9.5 / UK 8.5" : "9.5";
        }
        case "SHOE-US10": {
          return region === "eu" ? "US 10 / UK 9" : "10";
        }
        case "SHOE-US10.5": {
          return region === "eu" ? "US 10.5 / UK 9.5" : "10.5";
        }
        case "SHOE-US11": {
          return region === "eu" ? "US 11 / UK 10" : "11";
        }
        case "SHOE-US11.5": {
          return region === "eu" ? "US 11.5 / UK 10.5" : "11.5";
        }
        case "SHOE-US12": {
          return region === "eu" ? "US 12 / UK 11" : "12";
        }
        case "SHOE-US13": {
          return region === "eu" ? "US 13 / UK 12" : "13";
        }
        default: {
          return size;
        }
      }
    }
  })();
})();

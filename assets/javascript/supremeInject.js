(() => {
  (async () => {
    localStorage.clear();

    if (typeof Supreme === "undefined") return await reload();

    setCookie(
      "js-address",
      "John%20Kowalsky|johnkowalsky%40gmail.com|544543234|Zielona%2023||Srajewo|undefined|12345|PL|",
      181
    );

    const payload = {
      id: "385b0c1b-fc44-47e4-ad45-0c9c782382c7",
      keywords: {
        positive: ["boxer", "briefs", "4 pack"],
        negative: [],
        multi: [],
        keywordsAmount: 2,
      },
      colors: {
        positive: ["white"],
        negative: [],
        keywordsAmount: 1,
      },
      size: {
        value: "Small",
        label: "Small",
      },
      anySize: true,
      anyColor: true,
      anySizeOption: {
        value: "largest",
        label: "The Largest",
      },
    };

    const externalStock = {};

    const restocks = {
      enabled: true,
      delay: 750,
    };

    const region = "eu";
    const items = [];

    const { keywords, colors, anySize, anyColor, anySizeOption } = payload;
    const sizeValue = payload.size.value;

    const sizeToFind = sizeValue.includes("SHOE")
      ? convertShoeSize(sizeValue, region)
      : sizeValue;

    let item = findItem(keywords);

    if (!item) {
      return await reload();
    }
    updateStatus("Product found");

    items.push(item.attributes.name);

    try {
      setSessionIDs();
      const hash = `products/${item.attributes.id}`;
      Backbone.history.fragment = hash;
      window.history.pushState({}, document.title, "#" + hash);
      setLastVisitedFragment();
    } catch {}
    updateStatus("Fetching product details");
    const styles = await fetchStyles(item);
    if (!styles) {
      return await reload();
    }

    const selectedStyle = selectStyle(styles, colors, anyColor);
    if (!selectedStyle) {
      if (!restocks.enabled) {
        updateStatus("Product sold out");
        return;
      }
      waitForRestock();
      return;
    }

    const availableSizes = selectedStyle.attributes.sizes.models.filter(
      (s) => s.attributes.stock_level !== 0
    );

    const size =
      selectedStyle.attributes.sizes.models.length > 1
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
    updateStatus("Adding to cart");

    const hash = `products/${item.attributes.id}/${selectedStyle.attributes.id}`;
    Backbone.history.fragment = hash;
    window.history.pushState({}, document.title, "#" + hash);
    setLastVisitedFragment();

    const s = Supreme.getProductOverviewDetailsForId(
      item.attributes.id,
      allCategoriesAndProducts
    );

    _currentViewHash.product = JSON.stringify(s).hashCode();
    _currentCategory = singularCategoryName(s.categoryName);
    _currentCategoryPlural = s.categoryName;

    const template =
      '<div id="product"><h2 id="name">' +
      item.attributes.name +
      '</h2><p id="style-name">&nbsp;</p><div id="style-image"><div id="style-image-container" class="swipe loading" style="visibility: visible; "></div><div class="clearfix"></div></div></div><div id="product-widgets" class="clearfix  "><div id="widgets-container"><span class="price">&nbsp;</span><span id="cart-update"></span></div></div><div style="margin-bottom:' +
      $(window).height() +
      'px;" id="product-details"><div id="product-details-content"><div id="styles"><ul class="style-selector"><li><div class="style-images"></div></li></ul><div class="clearfix"></div></div><p style="height:150px;" id="description">&nbsp;</p></div></div>';

    $("#main").html(template);

    item.set("selectedStyle", selectedStyle);
    const productDetailView = new ProductDetailView({
      model: item,
    });

    markItemTimeViewed(item.attributes.id);
    $("footer").show();
    $("#main").html(productDetailView.render().el);
    productDetailView.addToCartButton.$el.click();
    lookForModifiedButtons();
    await waitForElement('a:contains("CHECK")');
    await sleep(600);

    updateStatus("Loading checkout");
    $('a:contains("CHECK")').click();
    await waitForElement("#credit-card-information-header");
    await sleep(500);

    updateStatus("Filling in checkout");
    $("#credit-card-information-header")[0].scrollIntoView();
    await type("#credit_card_n", "4111432143214321");
    await selectOption("08");
    await selectOption("2023");
    await type("#credit_card_cvv", "414");
    $("#order_terms_label").click();
    await sleep(250);

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

    $("button:contains('process')").click();
    watchCaptchaChallenge();

    async function watchCaptchaChallenge() {
      const iframeSelector = "iframe[src*='recaptcha/api2/b']";
      await waitForElement(iframeSelector);
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

    async function type(fieldSelector, text) {
      $(fieldSelector).focus();
      for (const character of text.split("")) {
        document.execCommand("insertHTML", false, character);
        await sleep(getRandomRange(35, 65));
      }
      createChangeEvent($(fieldSelector));
    }

    async function selectOption(option) {
      const optionElement = $(`option:contains("${option}")`);
      const select = optionElement.parent();
      select.val(optionElement.val());
      createChangeEvent(select);
      await sleep(100);
    }

    function createChangeEvent(element) {
      var node = document.getElementsByTagName("body")[0];
      var scr = document.createElement("script");
      scr.setAttribute("type", "text/javascript");
      $(scr).text("$('#" + $(element).attr("id") + "').change()");
      node.appendChild(scr);
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

    async function waitForElement(selector) {
      while ($(selector).length == 0) {
        await sleep(250);
      }
    }

    function getRandomRange(min, max) {
      return Math.random() * (max - min) + min;
    }

    function setCookie(name, value, days) {
      var expires = "";
      if (days) {
        var date = new Date();
        date.setTime(date.getTime() + days * 24 * 60 * 60 * 1000);
        expires = "; expires=" + date.toUTCString();
      }
      document.cookie = name + "=" + (value || "") + expires + "; path=/";
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
      const primary = sizes.find(
        (s) => s.attributes.name.toLowerCase() === sizeToFind.toLowerCase()
      );
      if (primary || !anySize || !anySizeOption || sizes.length === 0)
        return primary;
      switch (anySizeOption.value) {
        case "smallest": {
          return sizes[0];
        }
        case "largest": {
          return sizes[sizes.length - 1];
        }
        case "random": {
          return sizes[Math.floor(Math.random() * sizes.length)];
        }
        default: {
          return sizes[Math.floor(Math.random() * sizes.length)];
        }
      }
    }

    function selectStyle(styles, colors, anyColor) {
      const filteredStyles = filterStyles(colors, styles);
      const primary = findMatchingStyle(colors, filteredStyles);

      if (primary || !anyColor) return primary;
      const secondary =
        filteredStyles[Math.floor(Math.random() * filteredStyles.length)];
      return secondary;
    }

    function findItem(keywords) {
      const stock = Supreme.categories.models.flatMap((c) =>
        c.attributes.products.models.flat()
      );
      return stock.find((item) => isMatch(item.attributes.name, keywords));
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

    function filterStyles(colors, styles) {
      for (let negative of colors.negative) {
        styles = styles.filter(
          (s) => !s.attributes.name.toLowerCase().includes(negative)
        );
      }
      return styles;
    }

    function findMatchingStyle(colors, styles) {
      for (let targetColor of colors.positive) {
        const match = styles.find((s) =>
          s.attributes.name.toLowerCase().includes(targetColor)
        );
        if (!match) continue;
        return match;
      }
      return null;
    }

    function loadExternalStock(externalStock) {
      allCategoriesAndProducts = externalStock;
      window.release_week = externalStock.release_week;
      window.release_date = externalStock.release_date;
      Supreme.categories = new Categories();
      Supreme.categories.populate(externalStock);
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

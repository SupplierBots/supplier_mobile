(() => {
  (async () => {
    localStorage.clear();

    if (typeof Supreme === "undefined") return await reload();

    setCookie(
      "js-address",
      "John%20Kowalsky|johnkowalsky%40gmail.com|544543234|Zielona%2023||Wilimy|undefined|12345|PL|",
      181
    );

    const payload = {
      id: "385b0c1b-fc44-47e4-ad45-0c9c782382c7",
      keywords: {
        positive: ["script", "logos"],
        negative: [],
        multi: [],
        keywordsAmount: 2,
      },
      colors: {
        positive: ["black"],
        negative: [],
        keywordsAmount: 1,
      },
      size: {
        value: "Large",
        label: "Large",
      },
      anySize: true,
      anyColor: true,
      anySizeOption: {
        value: "largest",
        label: "The Largest",
      },
      name: "test",
      site: {
        value: "supreme",
        label: "Supreme",
      },
    };
    const externalStock = {};
    const restocks = { enabled: true, delay: 750 };
    const region = "eu";
    const items = [];

    const { keywords, colors, anySize, anyColor, anySizeOption } = payload;
    const sizeValue = payload.size.value;

    const sizeToFind = sizeValue.includes("SHOE")
      ? convertShoeSize(sizeValue, region)
      : sizeValue;

    let item = findItem(keywords);

    // if (!item && externalStock) {
    //   loadExternalStock(externalStock);
    //   item = findItem(keywords);
    // }

    if (!item) {
      return await reload();
    }

    items.push(item.attributes.name);

    try {
      setSessionIDs();
      Backbone.history.fragment = `products/${item.attributes.id}`;
      setLastVisitedFragment();
    } catch {}

    const styles = await fetchStyles(item);
    if (!styles) {
      return await reload();
    }

    const selectedStyle = selectStyle(styles, colors, anyColor);
    if (!selectedStyle) {
      if (!restocks.enabled) {
        notifyTask("Sold out", "Error", {
          name: item.attributes.name,
          image: item.attributes.image_url.replace("//", "https://"),
          style: "sold-out",
          size: "sold-out",
        });
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
        notifyTask("Sold out", "Error", {
          name: item.attributes.name,
          image: selectedStyle.attributes.image_url.replace("//", "https://"),
          style: "sold-out",
          size: "sold-out",
        });
        return;
      }
      waitForRestock();
      return;
    }

    try {
      Backbone.history.fragment = `products/${item.attributes.id}/${selectedStyle.attributes.id}`;
      setLastVisitedFragment();
    } catch {}
    await addToCart(size);
    await sleep(500);
    notifyTask("ATC", "Action", {
      name: item.attributes.name,
      image: selectedStyle.attributes.image_url.replace("//", "https://"),
      style: selectedStyle.attributes.name,
      size: size.attributes.name,
    });
    Supreme.app.navigate("#checkout", { trigger: true });
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
      notifyTask("Waiting for restock", "Action");
      await sleep(restocks.delay);
      window.location.reload();
    }

    async function addToCart(size) {
      notifyTask("Adding to cart", "Action");
      const result = await Promise.race([atcListener(size), atcRequest(size)]);

      if (!Supreme.app.cart.attributes.sizes.contains(size)) {
        Supreme.app.cart.addSizeToLocalStorage(size, 1);
        Supreme.app.cart.attributes.sizes.add(size, 1);
      }
      return result;
    }

    async function atcRequest(size) {
      const id = size.attributes.id.toString();

      while (!localStorage.hasOwnProperty(id)) {
        Supreme.app.cart.removeSizeDirectly(id);
        Supreme.app.cart.addSize(size);
        await sleep(1500);
      }

      return true;
    }

    async function atcListener(size) {
      const id = size.attributes.id.toString();

      while (!localStorage.hasOwnProperty(id)) {
        await sleep(10);
      }

      return true;
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

    function notifyTask(message, type, item) {
      // fetch("http://127.0.0.1:2140/supplier.json", {
      //   method: "POST",
      //   headers: {
      //     Accept: "application/json",
      //     "Content-Type": "application/json",
      //   },
      //   body: JSON.stringify({ message, type, item }),
      // });
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

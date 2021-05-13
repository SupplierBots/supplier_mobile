(() => {
  window.__nativeCache = {
    querySelector: document.querySelector.bind(document),
    querySelectorAll: document.querySelectorAll.bind(document),
    elementQuerySelector: HTMLElement.prototype.querySelector,
    elementQuerySelectorAll: HTMLElement.prototype.querySelectorAll,
    elementFocus: HTMLElement.prototype.focus,
    execCommand: document.execCommand.bind(document),
    requestOpen: XMLHttpRequest.prototype.open,
    onResponse: function (fn) {
      XMLHttpRequest.prototype.open = function () {
        const params = {
          method: arguments[0],
          url: arguments[1],
        };
        this.addEventListener("load", function () {
          fn({
            ...params,
            url: this.responseURL,
            text: this.responseText,
            success: true,
            status: this.status,
          });
        });
        this.addEventListener("error", function (err) {
          fn({
            ...params,
            text: this.responseText,
            success: false,
            status: this.status,
          });
        });
        window.__nativeCache.requestOpen.apply(this, arguments);
      };
      XMLHttpRequest.prototype.open.toString = () =>
        "function open() { [native code] }";
    },
  };
})();

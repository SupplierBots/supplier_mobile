(() => {
  window.__nativeCache = {
    querySelector: document.querySelector.bind(document),
    querySelectorAll: document.querySelectorAll.bind(document),
    elementQuerySelector: HTMLElement.prototype.querySelector,
    elementQuerySelectorAll: HTMLElement.prototype.querySelectorAll,
    execCommand: document.execCommand.bind(document),
  };
})();

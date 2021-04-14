(() => {
  window.__nativeCache = {
    querySelector: document.querySelector.bind(document),
    querySelectorAll: document.querySelectorAll.bind(document),
    elementQuerySelector: HTMLElement.prototype.querySelector,
    elementQuerySelectorAll: HTMLElement.prototype.querySelectorAll,
    elementFocus: HTMLElement.prototype.focus,
    execCommand: document.execCommand.bind(document),
  };
})();

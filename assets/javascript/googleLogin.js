(() => {
  const emailNode = document.evaluate(
    "//div[contains(text(),'@gmail.com')]",
    document,
    null,
    XPathResult.FIRST_ORDERED_NODE_TYPE,
    null
  ).singleNodeValue;

  if (!emailNode) return;

  window.flutter_inappwebview.callHandler(
    "supplierConnection",
    emailNode.innerText
  );
})();

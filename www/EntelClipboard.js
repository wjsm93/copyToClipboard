var entelclipboard = {
  copyToClipboard: function (arg0, success, error) {
    cordova.exec(success, error, 'EntelClipboard', 'copyToClipboard', [arg0]);
  }
}

cordova.addConstructor(function () {
  if (!window.plugins) {
    window.plugins = {};
  }

  window.plugins.entelclipboard = entelclipboard;
  return window.plugins.entelclipboard;
});
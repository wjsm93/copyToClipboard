@objc(EntelClipboard) class EntelClipboard : CDVPlugin {
  @objc(copyToClipboard:)
  func copyToClipboard(command: CDVInvokedUrlCommand) {

    // Error de plugin
    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )

    // Declarar variable para primer parámetro
    let copyText = command.arguments[0] as? String ?? ""

    // Si la Occ no viene vacía
    if copyText.count > 0 {

      let pasteboard = UIPasteboard.general
      pasteboard.string = copyText
      
      // Success de plugin
      pluginResult = CDVPluginResult(
        status: CDVCommandStatus_OK,
        messageAs: "Ok"
      )
    }

    // Enviar respuesta de plugin
    self.commandDelegate!.send(
      pluginResult,
      callbackId: command.callbackId
    )
  }
}

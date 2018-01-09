@objc(ASAM) class ASAM : CDVPlugin {
  @objc(enter:)
  func enter(command: CDVInvokedUrlCommand) {
    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )
    
    UIAccessibilityRequestGuidedAccessSession(true, { (didSucceed) -> Void in
        if (didSucceed) {
            //
        }
    })
    
    pluginResult = CDVPluginResult(
      status: CDVCommandStatus_OK
    )

    self.commandDelegate!.send(
      pluginResult,
      callbackId: command.callbackId
    )
  }
  
  @objc(leave:)
  func leave(command: CDVInvokedUrlCommand) {
    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )
    
    UIAccessibilityRequestGuidedAccessSession(false, { (didSucceed) -> Void in
        if (didSucceed) {
            //
        }
    })
    
    pluginResult = CDVPluginResult(
      status: CDVCommandStatus_OK
    )

    self.commandDelegate!.send(
      pluginResult,
      callbackId: command.callbackId
    )
  }
  
  
  @objc(active:)
  func active(command: CDVInvokedUrlCommand) {
    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )
    
    pluginResult = CDVPluginResult(
      status: CDVCommandStatus_OK,
      messageAs: UIAccessibilityIsGuidedAccessEnabled() 
    )

    self.commandDelegate!.send(
      pluginResult,
      callbackId: command.callbackId
    )
  }
}
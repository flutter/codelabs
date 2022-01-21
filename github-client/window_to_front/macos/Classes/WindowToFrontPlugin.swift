import Cocoa
import FlutterMacOS

public class WindowToFrontPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "window_to_front", binaryMessenger: registrar.messenger)
    let instance = WindowToFrontPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    // Add from here
    case "activate":
      NSApplication.shared.activate(ignoringOtherApps: true)
      result(nil)
    // to here.
    // Delete the getPlatformVersion case,
    // as we won’t be using it.
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}

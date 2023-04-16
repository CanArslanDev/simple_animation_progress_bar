import Cocoa
import FlutterMacOS

public class SimpleAnimationProgressBarPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "simple_animation_progress_bar", binaryMessenger: registrar.messenger)
    let instance = SimpleAnimationProgressBarPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}

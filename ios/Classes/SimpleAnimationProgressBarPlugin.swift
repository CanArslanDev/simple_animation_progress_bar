import Flutter
import UIKit

public class SimpleAnimationProgressBarPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "simple_animation_progress_bar", binaryMessenger: registrar.messenger())
    let instance = SimpleAnimationProgressBarPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

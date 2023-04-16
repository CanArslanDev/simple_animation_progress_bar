#ifndef FLUTTER_PLUGIN_SIMPLE_ANIMATION_PROGRESS_BAR_PLUGIN_H_
#define FLUTTER_PLUGIN_SIMPLE_ANIMATION_PROGRESS_BAR_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace simple_animation_progress_bar {

class SimpleAnimationProgressBarPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  SimpleAnimationProgressBarPlugin();

  virtual ~SimpleAnimationProgressBarPlugin();

  // Disallow copy and assign.
  SimpleAnimationProgressBarPlugin(const SimpleAnimationProgressBarPlugin&) = delete;
  SimpleAnimationProgressBarPlugin& operator=(const SimpleAnimationProgressBarPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace simple_animation_progress_bar

#endif  // FLUTTER_PLUGIN_SIMPLE_ANIMATION_PROGRESS_BAR_PLUGIN_H_

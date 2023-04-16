#include "include/simple_animation_progress_bar/simple_animation_progress_bar_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "simple_animation_progress_bar_plugin.h"

void SimpleAnimationProgressBarPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  simple_animation_progress_bar::SimpleAnimationProgressBarPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

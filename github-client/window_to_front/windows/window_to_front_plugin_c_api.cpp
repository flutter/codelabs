#include "include/window_to_front/window_to_front_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "window_to_front_plugin.h"

void WindowToFrontPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  window_to_front::WindowToFrontPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}

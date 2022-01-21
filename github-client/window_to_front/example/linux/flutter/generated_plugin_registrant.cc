//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <window_to_front/window_to_front_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) window_to_front_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "WindowToFrontPlugin");
  window_to_front_plugin_register_with_registrar(window_to_front_registrar);
}

#include "include/window_to_front/window_to_front_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>

#define WINDOW_TO_FRONT_PLUGIN(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), window_to_front_plugin_get_type(), \
                              WindowToFrontPlugin))

struct _WindowToFrontPlugin {
  GObject parent_instance;

  FlPluginRegistrar* registrar;
};

G_DEFINE_TYPE(WindowToFrontPlugin, window_to_front_plugin, g_object_get_type())

// Called when a method call is received from Flutter.
static void window_to_front_plugin_handle_method_call(
    WindowToFrontPlugin* self,
    FlMethodCall* method_call) {
  g_autoptr(FlMethodResponse) response = nullptr;

  const gchar* method = fl_method_call_get_name(method_call);

  if (strcmp(method, "activate") == 0) {
    FlView* view = fl_plugin_registrar_get_view(self->registrar);
    if (view != nullptr) {
      GtkWindow* window = GTK_WINDOW(gtk_widget_get_toplevel(GTK_WIDGET(view)));
      gtk_window_present(window);
    }
    
    response = FL_METHOD_RESPONSE(fl_method_success_response_new(nullptr));
  } else {
    response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
  }

  fl_method_call_respond(method_call, response, nullptr);
}

static void window_to_front_plugin_dispose(GObject* object) {
  G_OBJECT_CLASS(window_to_front_plugin_parent_class)->dispose(object);
}

static void window_to_front_plugin_class_init(WindowToFrontPluginClass* klass) {
  G_OBJECT_CLASS(klass)->dispose = window_to_front_plugin_dispose;
}

static void window_to_front_plugin_init(WindowToFrontPlugin* self) {}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
                           gpointer user_data) {
  WindowToFrontPlugin* plugin = WINDOW_TO_FRONT_PLUGIN(user_data);
  window_to_front_plugin_handle_method_call(plugin, method_call);
}

void window_to_front_plugin_register_with_registrar(FlPluginRegistrar* registrar) {
  WindowToFrontPlugin* plugin = WINDOW_TO_FRONT_PLUGIN(
      g_object_new(window_to_front_plugin_get_type(), nullptr));

  plugin->registrar = FL_PLUGIN_REGISTRAR(g_object_ref(registrar));

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) channel =
      fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
                            "window_to_front",
                            FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(channel, method_call_cb,
                                            g_object_ref(plugin),
                                            g_object_unref);

  g_object_unref(plugin);
}

package com.leighajarett.homescreen_widgets

import android.content.Context
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val METHOD_CHANNEL_NAME = "example.widget.dev/get_container_path"
    private var methodChannel: MethodChannel? = null

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        //setup channels
        setupChannels(this, flutterEngine.dartExecutor.binaryMessenger)
    }

    private fun setupChannels(context: Context, messenger: BinaryMessenger) {
        methodChannel = MethodChannel(messenger, METHOD_CHANNEL_NAME)
        methodChannel!!.setMethodCallHandler { call, result ->
            when (call.method) {
                "getContainerPath" -> {
                    var path: String = context.filesDir.path;
                    result.success(path)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }
}

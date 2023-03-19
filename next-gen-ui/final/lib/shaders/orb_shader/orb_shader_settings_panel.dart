import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles.dart';
import 'orb_shader_config.dart';

class OrbShaderSettingsPanel extends StatelessWidget {
  const OrbShaderSettingsPanel(this.config, {super.key});

  final OrbShaderConfig config;

  @override
  Widget build(BuildContext context) {
    final cfg = config;

    return SizedBox(
      width: 200,
      child: Card(
        color: Colors.white.withOpacity(.9),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ValueEditor(cfg, 'Exposure', cfg.exposure, 0.0, 10.0, (v) => cfg.exposure = v),
                _ValueEditor(cfg, 'Light X', cfg.lightOffsetX, -1.0, 1.0, (v) => cfg.lightOffsetX = v),
                _ValueEditor(cfg, 'Light Y', cfg.lightOffsetY, -1.0, 1.0, (v) => cfg.lightOffsetY = v),
                _ValueEditor(cfg, 'Light Z', cfg.lightOffsetZ, -1.0, 0, (v) => cfg.lightOffsetZ = v),
                _ValueEditor(cfg, 'Light Attenuation', cfg.lightAttenuation, 0.0, 1.0, (v) => cfg.lightAttenuation = v),
                _ValueEditor(cfg, 'Light Radius', cfg.lightRadius, 0.1, 4.0, (v) => cfg.lightRadius = v),
                _ValueEditor(cfg, 'Light Brightness', cfg.lightBrightness, 0.0, 100.0, (v) => cfg.lightBrightness = v),
                _ValueEditor(cfg, 'Ambient Brightness', cfg.ambientLightBrightness, 0.0, 50.0,
                    (v) => cfg.ambientLightBrightness = v),
                _ValueEditor(cfg, 'Ambient Depth Factor', cfg.ambientLightDepthFactor, 0.0, 1.0,
                    (v) => cfg.ambientLightDepthFactor = v),
                _ValueEditor(cfg, 'Index of Refraction', cfg.ior, 0.0, 2.0, (v) => cfg.ior = v),
                _ValueEditor(cfg, 'Roughness', cfg.roughness, 0.0, 1.0, (v) => cfg.roughness = v),
                _ValueEditor(cfg, 'Metalness', cfg.metalness, 0.0, 1.0, (v) => cfg.metalness = v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ValueEditor extends StatelessWidget {
  const _ValueEditor(this.config, this.label, this.value, this.min, this.max, this.onChanged);

  final OrbShaderConfig config;
  final String label;
  final double value;
  final double min;
  final double max;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('   $label: ${value.toStringAsFixed(2)}',
            style: TextStyles.btn.copyWith(fontSize: 12, letterSpacing: 0, color: Colors.black)),
        CupertinoSlider(
            min: min,
            max: max,
            value: value,
            divisions: null,
            onChanged: (v) {
              onChanged(v);
              //config.notifyListeners();
            }),
      ],
    );
  }
}

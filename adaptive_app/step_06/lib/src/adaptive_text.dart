import 'package:flutter/material.dart';

class AdaptiveText extends StatelessWidget {
  const AdaptiveText(this.data, {super.key, this.style});
  final String data;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.iOS:
        return Text(data, style: style);
      default:
        return SelectableText(data, style: style);
    }
  }
}

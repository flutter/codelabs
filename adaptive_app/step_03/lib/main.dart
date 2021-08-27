import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResizeablePage(),
    );
  }
}

class ResizeablePage extends StatelessWidget {
  const ResizeablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final targetPlatform = Theme.of(context).platform;
    final platform = platformDescripiton();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Window properties',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 350,
              child: Table(
                textBaseline: TextBaseline.alphabetic,
                children: <TableRow>[
                  _fillTableRow(
                    context,
                    'Size',
                    '${mediaQueryData.size.width.toStringAsFixed(1)} x '
                        '${mediaQueryData.size.height.toStringAsFixed(1)}',
                  ),
                  _fillTableRow(
                    context,
                    'Device Pixel Ratio',
                    mediaQueryData.devicePixelRatio.toStringAsFixed(1),
                  ),
                  _fillTableRow(
                    context,
                    'Device Platform',
                    platform,
                  ),
                  _fillTableRow(
                    context,
                    'Target Platform',
                    targetPlatform.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _fillTableRow(BuildContext context, String prop, String val) =>
      TableRow(
        children: [
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.baseline,
            child: Row(
              children: [
                Text(
                  prop,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(width: 8, height: 24),
              ],
            ),
          ),
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.baseline,
            child: Row(
              children: [
                Text(
                  val,
                ),
              ],
            ),
          ),
        ],
      );

  String platformDescripiton() {
    if (kIsWeb) {
      return 'Web';
    } else if (Platform.isAndroid) {
      return 'Android';
    } else if (Platform.isIOS) {
      return 'iOS';
    } else if (Platform.isWindows) {
      return 'Windows';
    } else if (Platform.isMacOS) {
      return 'macOS';
    } else if (Platform.isLinux) {
      return 'Linux';
    } else if (Platform.isFuchsia) {
      return 'Fuchsia';
    } else {
      return 'Unknown';
    }
  }
}

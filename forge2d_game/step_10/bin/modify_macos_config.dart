import 'dart:io';
import 'package:xml/xml.dart';
import 'package:xml/xpath.dart';

void main() {
  final file = File('macos/Runner/Base.lproj/MainMenu.xib');
  var document = XmlDocument.parse(file.readAsStringSync());
  document.xpath('//document/objects/window').first
    ..setAttribute('titlebarAppearsTransparent', 'YES')
    ..setAttribute('titleVisibility', 'hidden');
  document
      .xpath('//document/objects/window/windowStyleMask')
      .first
      .setAttribute('fullSizeContentView', 'YES');
  file.writeAsStringSync(document.toString());
}

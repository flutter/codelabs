import 'package:googleapis/docs/v1.dart' as gdoc;

List<Uri> claatImageUris(gdoc.Document document) {
  List<Uri> uris = [];
  for (final MapEntry(:key, :value) in document.inlineObjects!.entries) {}
  return uris;
}

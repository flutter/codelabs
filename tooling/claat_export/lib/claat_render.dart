import 'package:googleapis/docs/v1.dart';

String renderCodelabAsMarkdown(Document document) {
  final docId = document.documentId!;
  final content = document.body!.content!;
  final ret = StringBuffer();

  for (final element in content) {
    switch (element) {
      case StructuralElement(paragraph: final paragraph) when paragraph != null:
        ret.writeln('paragraph:${paragraph.toJson()}');
      case StructuralElement(sectionBreak: final sectionBreak)
          when sectionBreak != null:
        ret.writeln('sectionBreak:${sectionBreak.toJson()}');
      case StructuralElement(table: final table) when table != null:
        ret.writeln('table:${table.toJson()}');
      case StructuralElement(tableOfContents: final tableOfContents)
          when tableOfContents != null:
        ret.writeln('tableOfContents:${tableOfContents.toJson()}');
      default:
        throw 'Unhandled StructuralElement: ${element.toJson()}';
    }
  }

  return ret.toString();
}

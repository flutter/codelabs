import 'package:googleapis/docs/v1.dart';

String renderCodelabAsMarkdown(Document document) {
  final docId = document.documentId!;
  final content = document.body!.content!;
  final buff = StringBuffer();

  buff.writeln('---');
  buff.writeln('source: $docId');
  buff.writeln();
  buff.writeln('---');
  buff.writeln();

  for (final element in content) {
    switch (element) {
      case StructuralElement(paragraph: final paragraph) when paragraph != null:
        processParagraph(paragraph, buff);
      case StructuralElement(sectionBreak: final sectionBreak)
          when sectionBreak != null:
        processSectionBreak(sectionBreak, buff);
      case StructuralElement(table: final table) when table != null:
        processTable(table, buff);
      case StructuralElement(tableOfContents: final tableOfContents)
          when tableOfContents != null:
        processTableOfContents(tableOfContents, buff);
      default:
        throw 'Unhandled StructuralElement: ${element.toJson()}';
    }
  }

  return buff.toString();
}

void processParagraph(Paragraph paragraph, StringBuffer buff) {
  final paragraphStyle = paragraph.paragraphStyle;
  final bullet = paragraph.bullet;
  final elements = paragraph.elements;

  switch (paragraphStyle?.namedStyleType) {
    case 'TITLE':
      buff.write('# ');
    case 'HEADING_1':
      buff.write('## ');
    case 'HEADING_2':
      buff.write('### ');
    case 'HEADING_3':
      buff.write('#### ');
    default:
  }

  if (elements != null) {
    for (final element in elements) {
      var textRun = element.textRun;
      if (textRun != null) {
        var content = textRun.content;
        final textStyle = textRun.textStyle;
        if (content != null) {
          content = content.trim();
          if (content.isNotEmpty) {
            if (bullet != null) {
              buff.write('* ');
            }
            if (textStyle != null) {
              final italic = textStyle.italic;
              if (italic != null && italic && content.trim().isNotEmpty) {
                buff.write('*');
                buff.write(content);
                buff.write('*');
              } else {
                buff.write(content);
              }
            } else {
              buff.write(content);
            }
          }
        }
      }
    }
  }
  if (paragraphStyle?.namedStyleType != null) buff.writeln();
  buff.writeln();
}

void processSectionBreak(SectionBreak sectionBreak, StringBuffer buff) {}

void processTable(Table table, StringBuffer buff) {}

void processTableOfContents(
    TableOfContents tableOfContents, StringBuffer buff) {}

import 'package:diff_match_patch/diff_match_patch.dart';

String dmpDiff(String a, String b) {
  final patches = patchMake(a, b: b);
  return patchToText(patches);
}

class PatchesApplied {
  const PatchesApplied(this.patchedText, this.successfullyApplied);
  final String patchedText;
  final List<bool> successfullyApplied;
}

PatchesApplied dmpPatch(String text, String patch) {
  final patches = patchFromText(patch);
  var result = patchApply(patches, text);
  String patchedText = result[0];
  List<bool> successfullyApplied = result[1];
  return PatchesApplied(patchedText, successfullyApplied);
}

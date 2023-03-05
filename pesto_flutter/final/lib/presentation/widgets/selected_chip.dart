// Copyright 2023 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class SelectedChip extends StatelessWidget {
  const SelectedChip({super.key, required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return RawChip(
        label: Text(label),
        onPressed: onTap,
        deleteIcon: const Icon(Icons.close, size: 18),
        onDeleted: onTap,
        backgroundColor: colors.secondaryContainer,
        deleteIconColor: colors.onSecondaryContainer,
        labelStyle: TextStyle(color: colors.onSecondaryContainer),
        deleteButtonTooltipMessage: 'Remove $label',
        side: BorderSide(color: colors.secondaryContainer));
  }
}

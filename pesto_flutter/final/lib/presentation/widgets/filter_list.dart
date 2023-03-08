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

import 'selected_chip.dart';

class FilterList extends StatelessWidget {
  const FilterList({
    super.key,
    required this.allFilters,
    required this.activeFilters,
  });

  final List<String> allFilters, activeFilters;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (final filter in allFilters)
            Padding(
              padding: const EdgeInsets.all(4),
              child: activeFilters.contains(filter)
                  ? SelectedChip(
                      label: filter,
                      onTap: () {},
                    )
                  : ChoiceChip(
                      selected: false,
                      label: Text(filter),
                      tooltip: 'Add "$filter" filter',
                      onSelected: (_) {},
                    ),
            )
        ],
      ),
    );
  }
}

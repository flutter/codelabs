/*
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sharing_codelab/model/photos_library_api_model.dart';
import 'package:sharing_codelab/pages/login_page.dart';

class TripAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TripAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<PhotosLibraryApiModel>(
      builder: (BuildContext context, Widget? child,
          PhotosLibraryApiModel apiModel) {
        return AppBar(
          title: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset(
                  'assets/ic_fieldTrippa.svg',
                  excludeFromSemantics: true,
                  color: Colors.green[800],
                ),
              ),
              Text(
                'Field Trippa',
                style: TextStyle(color: Colors.green[800]),
              ),
            ],
          ),
          actions: _buildActions(apiModel, context),
        );
      },
    );
  }

  List<Widget> _buildActions(
      PhotosLibraryApiModel apiModel, BuildContext context) {
    final widgets = <Widget>[];

    if (apiModel.isLoggedIn()) {
      if (apiModel.user!.photoUrl != null) {
        widgets.add(
          CircleAvatar(
            radius: 14,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                apiModel.user!.photoUrl!,
              ),
            ),
          ),
        );
      } else {
        // Placeholder to use when there is no photo URL.
        final placeholderCharSources = <String?>[
          apiModel.user!.displayName,
          apiModel.user!.email,
          '-',
        ];
        final placeholderChar = placeholderCharSources
            .firstWhere(
                (String? str) => str != null && str.trimLeft().isNotEmpty)!
            .trimLeft()[0]
            .toUpperCase();

        widgets.add(
          SizedBox(
            height: 6,
            child: CircleAvatar(
              child: Text(placeholderChar),
            ),
          ),
        );
      }

      widgets.add(
        PopupMenuButton<_AppBarOverflowOptions>(
          onSelected: (_AppBarOverflowOptions selection) async {
            await apiModel.signOut();
            await Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const LoginPage(),
              ),
            );
          },
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<_AppBarOverflowOptions>>[
              const PopupMenuItem<_AppBarOverflowOptions>(
                value: _AppBarOverflowOptions.signout,
                child: Text('Disconnect from Google Photos'),
              )
            ];
          },
        ),
      );
    }

    return widgets;
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

enum _AppBarOverflowOptions {
  signout,
}

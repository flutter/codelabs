// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO #3: Wrap the Scaffold inside a DefaultTabController widget.
    //
    // Tip: To quickly wrap a widget, place your cursor on the Scaffold widget,
    // and hit alt + enter for windows or option + return for mac. Select the
    // "Wrap with widget..." action from the dropdown.
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Tabs'),
        // TODO #1: Add a TabBar to the bottom of the AppBar.
        // bottom: ...
      ),

      // TODO #2: Add a TabBarView to the body of the scaffold
      // body: ...
    );
  }
}

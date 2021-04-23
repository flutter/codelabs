# Migrate MyStorePage

Now we have successfully migrated the app to use a centralized state management system.
However, there is still one StatefulWidget that contains its own state. That is
`MyStorePage` widget.

This widget keeps track of whether it is in a search mode and `TextField` related
controllers. For the purpose of this workshop, let's see if we can completely eliminate
any state hanging around the app.

```dart
// TODO: convert MyStorePage into StatelessWidget
class MyStorePage extends StatefulWidget {
  MyStorePage({Key? key}) : super(key: key);
  @override
  MyStorePageState createState() => MyStorePageState();
}
```
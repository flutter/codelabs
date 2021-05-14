# Migrate MyStorePage

We successfully migrated the app to use a centralized state management system.
However, there's still one `StatefulWidget` that contains its own state. That widget is
`MyStorePage`.

The `MyStorePage` widget keeps track of whether it's in search mode and any `TextField`-related
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
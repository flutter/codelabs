# Migrate MyStorePage

We successfully migrated the app to use a centralized state management system.
However, there's still one <span style="font-family: 'Courier New';">StatefulWidget</span> that contains its own state. That widget is
<span style="font-family: 'Courier New';">MyStorePage</span>.

The <span style="font-family: 'Courier New';">MyStorePage</span> widget keeps track of whether it's in search mode and any <span style="font-family: 'Courier New';">TextField</span>-related
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
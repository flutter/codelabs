# Migrate MySorePage

Now we have successfully migrate the app to use a centralized state management system.
However, there is still one StatefulWidget that contains its own state. That is
`MySorePage` widget.

This widget keeps track of whether it is in a search mode and `TextField` related
controllers. For the purpose of this tutorial, let's see if we can completely eliminate
any state hanging around the app.

```dart
// TODO: convert MySorePage into StatelessWidget
class MySorePage extends StatefulWidget {
  MySorePage({Key? key}) : super(key: key);
  @override
  MySorePageState createState() => MySorePageState();
}
```
# Navigate Away From a Page

In the previous section you learned how to navigate to a new page. Now, it's
time to navigate away from that same page! Once again, the `Navigator` is the
tool for the job.

To navigate away from the current page, use the `Navigator.pop` static method. 

```dart
// Provide the nearest BuildContext to the pop method. The BuildContext variable
// is used to find the correct Navigator instance from the widget tree.
Navigator.pop(context); 
```

## Return data to the original page

In some cases, you may need to send data from the current page back to the
previous page. To do so, provide a second argument to the `pop` method. You may
provide an object of any type. The following example returns a `String` to the
previous page.

```dart
Navigator.pop(context, "Extra Data");
```

## Capture the returned data

Where does the "Extra Data" `String` go? Back to the function that pushed the new
page in the first place! The `Navigator.push` method returns a `Future` that
completes when the new page is closed. The `Future` contains the "Extra Data"
provided to the `pop` method!

```dart
ListTile(
  title: Text('Item $index'),
  
  // Use an async function to work with Futures
  onTap: () async {
    // Wait until the DetailsPaged is popped. Then, capture the returned data.
    final returnedData = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(index: index),
      ),
    );

    // Finally, do something with the result! Print it to the console or 
    // display a Snackbar :) Remember, the screen may or may not return any 
    // data, so it's important to check if you have data to work with.
    if (returnedData != null) {
      print(returnedData);
    }
  },
);        
```

## Your Turn

The Goal: Create a button on the `DetailsPage` that navigates the user back to
the `HomePage`. Display a Snackbar with the returned value.

  1. Add an `ElevatedButton` to the `DetailsPage` with a `Text` widget that
     reads "Go Back." Provide an `onPressed` callback function to the
     `ElevatedButton` which uses `Navigator.pop` to navigate away from the
     `DetailsPage` to the `HomePage`.
  2. Return a `String` from the `pop` method that says which `DetailsPage` was
     closed.
  3. Capture the returned `String` using `async` and `await`.
  4. Display a the returned string with a `Snackbar` or the `print` the returned
     `String` to the console.
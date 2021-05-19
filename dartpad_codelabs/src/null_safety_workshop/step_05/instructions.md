# The `required` keyword
Dart's named parameters are, by default, optional. Consider a function declared
like this:

```dart
void printThreeValues({
  int? first,
  int? second,
  int? third,
});
```

Other code in an app could invoke this function with any combination of its
three parameters. 

```dart
printThreeValues();
printThreeValues(second: 12);
printThreeValues(first: 1, second: 4, third: 2);
```

Any parameters that aren't supplied are given a value of `null`. Since the
function uses nullable types (`int?`), this isn't a problem. What do you do,
though, if you want to declare a function with named parameters of non-nullable
types? Use the `required` keyword!

```dart
void printThreeValues({
  required int first,
  required int second,
  required int third,
});
```

When declared this way, all three of the parameters for `printThreeValues` are
required, and any code that calls the function must provide all three.
Otherwise, it's a compile-time error.

That means that this example from earlier would still work:

```dart
printThreeValues(first: 1, second: 4, third: 2);
```

The two, though, wouldn't:

```dart
printThreeValues();
printThreeValues(second: 12);
```

By marking non-nullable named parameters required, you can make sure anyone
calling a method provides a non-null value, maintaining sound null safety.

## Exercise
Try correcting the errors in the code below by adding `required` to the right
parameters.

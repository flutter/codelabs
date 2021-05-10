# Type promotion via null checks
Dart can also promote nullable variables to non-nullable ones when there's a
null check in the same scope.

## Exercise
In the code below, add an `if` statement to the beginning of `getLength` that
returns zero if `str` is null:

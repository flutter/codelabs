# Non-nullable types
When you opt in to null safety, all types are non-nullable by default. For
example, if you have a variable of type `String`, it will always contain a
string.

If you want a variable of type `String` to accept any string or the value
`null`, give the variable a nullable type by adding a question mark (`?`) after
the type name. For example, a variable of type `String?` can contain a string,
or it can be null.

## Exercise:
The variable a below is declared as an `int`. Try changing the value in the
assignment to `3` or `145`. Anything but `null`!

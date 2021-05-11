# The late keyword
Sometimes variables — fields in a class, or top-level variables — _should_ be
non-nullable, but they can’t be assigned a value immediately. For cases like
that, use the `late` keyword.

When you put `late` in front of a variable declaration, that tells Dart the
following:

* Don’t assign that variable a value yet.
* You will assign it a value later.
* You’ll make sure that the variable has a value before the variable is used.

Be wary, though -- if you declare a variable late and that variable is read
before it’s assigned a value, an error is thrown.

## Exercise
Try using the `late` keyword to correct the following code. For a little extra
fun afterward, try commenting out the line that sets description!

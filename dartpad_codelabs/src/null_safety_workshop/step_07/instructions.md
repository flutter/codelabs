# Promotion via exceptions
Promotion works with exceptions as well as return statements. If you check a
nullable variable for null and throw an exception, Dart will consider any future
reads from that variable in the same scope to be null-safe.

## Exercise
Try a null check that throws an Exception instead of returning zero.

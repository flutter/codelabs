# An advanced pattern: late circular references
The `late` keyword is helpful for tricky patterns like circular references. This
code has two objects that need to maintain non-nullable references to each
other.

## Exercise
Try using the `late` keyword to fix this code.

_(Note that you don’t need to remove final. You can create late final variables: you set their values once, and after that they’re read-only.)_

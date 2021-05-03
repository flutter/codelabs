# Object properties aren't promotable
A common "Huh?" moment when first learning to use Dart's null safety arrives the
first time you do a null check on an object field. This is due to the fact that
in Dart, object properties have getters and setters (either real or implied),
and so something that looks like a typical value property can return different
things when read twice in the same code block.

Fortunately, there's a simple trick to handle this: read the variable once and
cache it in a local variable@

## Exercise: 
Try adding a local variable to store the value returned by `provider.value` in
the example, then check and print that variable instead.

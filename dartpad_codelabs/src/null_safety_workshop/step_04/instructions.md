# The null assertion operator (`!`)
If you’re sure that an expression with a nullable type isn’t null, you can use a
null assertion operator (`!`) to make Dart treat it as non-nullable. By adding 
`!` just after the expression, you tell Dart that the value won’t be null, and
that it’s safe to assign it to a non-nullable variable.

If you’re wrong, Dart throws an exception at run-time. This makes the `!`
operator unsafe, so don’t use it unless you’re very sure that the expression
isn’t null.

## Exercise
In the code below, try adding exclamation points to correct the broken
assignments:
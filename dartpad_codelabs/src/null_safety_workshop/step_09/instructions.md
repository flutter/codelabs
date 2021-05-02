# Another tricky object property example
Even if a class doesn't define a getter for its property, it's possible for a
subclass to implement one anyway. In this case, what looks like a
straightforward property in `StringProvider` gets turned into a random value in
`RandomStringProvider`.

When the code in `main` goes to access the value, even though `provider` is
typed as `StringProvider`, it's holding a `RandomStringProvider`, illustrating
why the value can't easily be promoted.

## Exercise: 
This exercise is really just an illustration of how overridable getters affect
null safety, but it can be solved the same way as the previous one: by caching
the value of the `provider.value` in a local variable.
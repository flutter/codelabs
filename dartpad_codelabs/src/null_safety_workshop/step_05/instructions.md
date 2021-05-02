# Type promotion
With sound null safety, Dart’s flow analysis has been extended to take
nullability into account. Nullable variables that can’t possibly contain null
values are treated like non-nullable variables. This behavior is called type
promotion.

Dart’s type system can track where variables are assigned and read, and can
verify that non-nullable fields are given values before any code tries to read
from them. This process is called definite assignment.

## Exercise
Try uncommenting the if-else statement in the code below, and watch the analyzer
errors disappear:

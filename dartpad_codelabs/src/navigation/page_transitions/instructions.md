# Custom Page Animations

In the previous sections on `Navigator.push` and `onGenerateRoute` you worked
with `Route` objects to animate pages on screen. Thus far, you've worked with
`MaterialPageRoute` which animates pages on screen according to the Material
Design specification and `CupertinoPageRoute` which animates pages on screen
following the Human Interface Guidelines. However, what if your team is building
a custom design system and you wanted to modify how pages are animated on
screen?

That's where `PageRouteBuilder` comes into play! Like `MaterialPageRoute` or
`CupertinoPageRoute`, the `PageRouteBuilder` is a `Route` object that animates a
widget on screen, but it gives you full control over the animation.

`PageRouteBuilder` requires two arguments: the `duration` which configures how
long the animation should run and a special `builder` function that animates a
widget on screen using the provided animation objects. The first `animation`
object runs when the page animates on screen. The `secondaryAnimation` runs when
a new page animates on top of it.

```dart
PageRouteBuilder(
  // Pages should take 1 second to animate on screen
  transitionDuration: Duration(seconds: 1),

  // This function animates the DetailsPage on screen with a custom transition
  pageBuilder: (
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // You can use any kind of animation you want! In this example, the 
    // DetailsPage is transitioned on screen with an opacity animation using the
    // FadeTransition widget.
    //
    // You can pass animations objects to many Transition widgets, such as 
    // RotationTransition or ScaleTransition. You can combine Transition widgets 
    // or build your own to create complex animations.
    return FadeTransition(
      opacity: animation,
      child: DetailsPage(),
    );
  },
);
```

## Reusable Animations

The code above works, but it's a bit long. It might be tough to read inside a
call to `Navigator.push` or inside an `onGenerateRoute` function. Furthermore,
what if you wanted to reuse the same page animation in different places? 

With the power of object oriented programming, you can solve these challenges!
Instead of copying and pasting the same `PageRouteBuilder` all over the place,
extend the `PageRouteBuilder` class.

```dart
class CustomPageRoute extends PageRouteBuilder {
  // The CustomPageRoute constructor should accept a function that builds a 
  // widget, just like MaterialPageRoute or CupertinoPageRoute. That way, the
  // HomePage and DetailsPage can both use the CustomPageRoute!
  CustomPageRoute({required WidgetBuilder builder})
      : super(
            // Pass the duration and pageBuilder arguments to the 
            // PageRouteBuilder "super" class
            transitionDuration: Duration(seconds: 1),
            pageBuilder: (context, animation, secondaryAnimation) {
              return FadeTransition(
                opacity: animation,
                // Instead of building the DetailsPage directly, use the builder
                // function to create the appropriate page. 
                child: builder(context),
              );
            });
}
```

## Your Turn

The goal: Replace the `MaterialPageRoute` animations with a `CustomPageRoute`
animation.

  1. Create a `CustomPageRoute` class that extends `PageRouteBuilder`. It should
     accept a `WidgetBuilder` function via the constructor.
  2. Use a `ScaleTransition` to animate the page on screen.
  3. Inside `onGenerateRoute`, replace the `MaterialPageRoute` pages with
     `CustomPageRoute`.
# Workshop: Navigation with Flutter

In most cases, apps are made up of different "sections," "pages," or "screens"
that display different types of content. For example, if you're building a music
app, you may have an "Explore" section that displays recommendations and a
"Library" section that displays your favorite tracks and playlists. Clicking on
a playlist may launch a new page that displays a list of tracks.

How can a user move from one section or page to the next? Navigation! As
described in the example above, there are different types of navigation. Some
navigation happens within a single page, whereas other navigation launches new
pages or closes old pages.

Flutter supports many different types of navigation. First, you'll start with
the classic in-page navigation: tabs.

## Tabs

Tabs allow you to navigate between different sections of related content within
the same page. If you are creating your own design system, you may consider
building your own widgets to display tabs. However, Flutter provides support for
Material Design out-of-the-box, including [Material Design
tabs](https://material.io/components/tabs).

Flutter's Material Design Tabs are made up of three components integrated with
the page's `Scaffold`:

  1. The `TabBar` widget displays the tabs.
  2. The `TabBarView` widget displays the correct content depending on the
     selected tab.
  3. The `TabBarController` synchronizes the `TabBar` and `TabBarView`.

## TabBar

First, display some tabs with the `TabBar` widget. The `TabBar` is designed to
display `Tab` widgets. Each `Tab` may display an `icon`, a label (`child`), or
both!

The tabs are displayed as part of the `AppBar` within the `Scaffold`. The
following example displays three tabs that display labels.

```dart
Scaffold(
  appBar: AppBar(
    title: Text('Tabs Demo'),
    // Add the tabs to the AppBar as part of the `bottom` section, which is 
    // displayed below the title.
    bottom: TabBar(
      tabs: [
        Tab(child: Text('Tab One')),
        Tab(child: Text('Tab Two')),
        Tab(child: Text('Tab Three')),
      ],
    ),
  ),
);
```

## TabBarView

Once a user selects a tab, you'll want to show them the correct content! That's
the job of the `TabBarView`. Provide a list of `children` widgets to the
`TabBarView`. When a user selects the first tab, the first child is displayed.
When a user taps the second tab, the second child is displayed, and so on.

The `TabBarView` is designed to occupy the `body` section of a `Scaffold`.

```dart
Scaffold(
  body: TabBarView(
    children: [
      Text('Content for Tab One'),
      Text('Content for Tab Two'),
      Text('Content for Tab Three'),
    ],
  ) 
);
```

## TabBarController

Now, it's time to keep the `TabBar` and `TabBarView` in sync. This is the job of
the `TabController`.  When a user taps on a tab in the `TabBar`, the
`TabController` sends a message to the `TabBarView` that it needs to update and
display the correct content.

You can create a `TabController` manually, but it's generally easier to use
the `DefaultTabController` widget, which creates one for you! In this case, we
are coordinating two widgets within the `Scaffold`. Therefore, the 
`DefaultTabController` must be the parent of the `Scaffold`.

```dart
DefaultTabController(
  length: 3, // Create a TabController that supports 3 tabs
  child: Scaffold(
    appBar: AppBar(),
    body: TabBarView(),
  ),
);
```

## Your Turn

  1. Add a `TabBar` to the `bottom` of the `AppBar` that displays 3 `Tab`
     widgets. Use the following icons: `Icons.restaurant`,
     `Icons.reviews_outlined`, and `Icons.settings_outlined`.
  2. Add a `TabBarView` to the `body` of the `Scaffold`. Display the same icons
     as the `children` of the `TabBarView`.
  3. Run the code. If you try to use the tabs, you'll see they look pretty good,
     but don't function!
  3. Wrap the `Scaffold` inside a `DefaultTabController` widget.
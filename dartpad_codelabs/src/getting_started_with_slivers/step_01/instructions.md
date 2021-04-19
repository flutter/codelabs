# Introduction

Welcome to the introductory sliver codelab for Flutter!
In this workshop, you will learn how to efficiently build
scrolling widgets and use slivers directly to create a rich
scrolling experience for users.

This codelab is best for folks already familiar with building simple
Flutter applications. If this is your first time using Flutter,
check out [Writing Your First Flutter App](https://flutter.dev/docs/get-started/codelab)
to get started using Flutter.


## What is a Sliver? 

What is a sliver? A sliver is a portion of scrollable area,
which means anything that scrolls in Flutter is a sliver.
If you've used a ListView or GridView before, congratulations!
You have already used a sliver somewhere in your Flutter application.
Most often, slivers are wrapped in convenience classes such as these.
This is because slivers use a different layout protocol from most
other widgets in the Flutter framework. We'll dicsuss this later in
the workshop. For now, let's take a tour of our starter code.

## A Simple Scrolling UI

Here we have a weather forecasting application, called **Horizons**.
This little app consists of a simple `SingleChildScrollView` with the next
seven day's forecast.





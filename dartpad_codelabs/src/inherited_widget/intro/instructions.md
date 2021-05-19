# Introduction

State management is an important topic in mobile development.
In Flutter, `InheritedWidget` makes the process of building
the state management system easier. In this workshop,
you will learn how to handle your app state by using InheritedWidget.




# Overview

This workshop includes a series of steps to convert an app without
any state management to a fully centralized state management system.

You will start with a demo Google store app. To see how the app looks,
click the **Run** button in the top, right corner of the IDE.

Try to scroll through different google products, and add or remove products from
the cart. The small cart icon on the right side of the app bar changes based on number
of products in the cart. You can also perform search queries by clicking the
search icon in the app bar and typing `nest` to filter nest products.

There are two components that require stateful objects:

1. The product list widget needs to store the items that are already in the cart and the text of the search query.
2. The cart icon needs to store the number of items in the cart.

Currently, this app stores duplicate information in the two components and must constantly sync the states.
Let's see how we can improve this app!

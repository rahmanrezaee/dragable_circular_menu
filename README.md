# Dragable Circular Menu

[![pub package](https://img.shields.io/pub/v/shimmer.svg)](https://pub.dartlang.org/packages/shimmer) ![](https://github.com/hnvn/flutter_shimmer/workflows/unit%20test/badge.svg)

A package provides dragable menu in Flutter project

<p>
    <img src="image/demo.gif" height="300em" />
   
</p> 

## How to use

```dart
import 'package:dragable_circular_menu/dragable_circular_menu.dart';

```

```dart
DragableCircularMenu(
  items: [
    CircularMenuItem(
        iconColor: color,
        icon: icon,
        onTap: () {}
    ),
  ],
  child: child // add the child 
);

``` -->
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'circular_menu.dart';
import 'circular_menu_item.dart';

class DragableCircularMenu extends StatelessWidget {
  Widget? child;

  List<CircularMenuItem>? items;
  DragableCircularMenu({Key? key, this.child, this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularMenu(
        alignment: Alignment.bottomCenter,
        backgroundWidget: this.child,
        toggleButtonColor: Colors.white,
        toggleButtonIconColor: Colors.black,
        toggleButtonOnPressed: () {},
        items: items!);
  }
}

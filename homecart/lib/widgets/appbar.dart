import 'package:flutter/material.dart';
import 'package:homecart/styles/styles.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,

      title: Text(
        'Homecart',
        style: Styles.heading1,
      ),

      leading: Builder(builder: (context) {
        return IconButton(
          color: Colors.grey,
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      }),
      
    );
  }
}

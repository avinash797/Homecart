import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  Tiles(
      {this.contentPadding,
      this.dense,
      this.hoverColor,
      this.isEnabled,
      this.leading,
      this.onLongPress,
      this.onTap,
      this.selectedTileColor,
      this.shape,
      this.subtitle,
      this.tileColor,
      this.title,
      this.trailing,
      this.visualDensity});

  final EdgeInsetsGeometry contentPadding;
  final bool dense;
  final bool isEnabled;
  final Color hoverColor;
  final Widget leading;
  final GestureLongPressCallback onLongPress;
  final GestureTapCallback onTap;
  final Color selectedTileColor;
  final ShapeBorder shape;
  final Widget subtitle;
  final Color tileColor;
  final Widget title;
  final Widget trailing;
  final VisualDensity visualDensity;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        contentPadding: contentPadding,
        dense: dense,
        hoverColor: hoverColor ?? Colors.amber,
        enabled: isEnabled ?? true,
        leading: leading,
        onLongPress: onLongPress ??
            () {
              AlertDialog(
                content: Text('Hero Anish'),
              );
            },
        onTap: onTap ?? () {},
        shape: shape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        subtitle: subtitle,
        title: title,
        trailing: trailing,
        visualDensity: visualDensity,
      ),
    );
  }
}

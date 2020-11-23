import 'package:flutter/material.dart';

class BasicCard extends StatelessWidget {

  BasicCard({
    this.borderOnForeground,
    this.child,
    this.clipBehaviour,
    this.color,
    this.elevation,
    this.shadowColor,
    this.shape
  });

  final bool borderOnForeground;
  @required final Widget child;
  final Clip clipBehaviour;
  final Color color;
  final double elevation;
  final Color shadowColor;
  final ShapeBorder shape;


  @override
  Widget build(BuildContext context) {
    return Card(
       elevation: elevation ?? 20.0,
       child: child,
       clipBehavior: clipBehaviour,
       color: color,
       borderOnForeground: borderOnForeground ?? false,
       shadowColor: shadowColor,
       shape: shape ?? RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
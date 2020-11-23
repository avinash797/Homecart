import 'package:flutter/material.dart';
import 'package:homecart/styles/styles.dart';


class Chklist extends StatefulWidget {
  Chklist(
      {this.text,
      this.controlAffinity,
      this.checkColor,
      this.activeColor,
      this.isThreeLine,
      this.dense,
      this.value,
      this.onChanged,
      this.size,
      this.fontColor,
      this.title,
      this.fontSize});

  @required
  final String text;
  final ListTileControlAffinity controlAffinity;
  final Color checkColor;
  final Color activeColor;
  final bool isThreeLine;
  final bool dense;
  final bool value;
  final ValueChanged<bool> onChanged;
  final double size;
  final Color fontColor;
  final Widget title;
  final double fontSize;

  @override
  _ChklistState createState() => _ChklistState();
}

class _ChklistState extends State<Chklist> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: widget.title ??
          Text(
            widget.text,
            style: Styles.listHeading,
          ),
      controlAffinity:
          widget.controlAffinity ?? ListTileControlAffinity.leading,
      checkColor: widget.checkColor ?? Colors.black,
      activeColor: widget.activeColor ?? Colors.purple[400],
      isThreeLine: widget.isThreeLine ?? false,
      dense: widget.dense ?? true,
      value: widget.value ?? false,
      onChanged: widget.onChanged ??
          (value) {
            setState(() {
              value = !value;
            });
          },
    );
  }
}

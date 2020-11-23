import 'package:flutter/material.dart';
import 'package:homecart/models/lists.dart';
import 'package:homecart/widgets/chklist.dart';

class DailyTile extends StatefulWidget {
  final Lists lists;

  DailyTile({this.lists});

  @override
  _DailyTileState createState() => _DailyTileState();
}

class _DailyTileState extends State<DailyTile> {
  bool values = false;
  @override
  Widget build(BuildContext context) {
    var items = widget.lists.contents;
    return (Column(
      children: [
        for (var item in items)
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Card(
              margin: EdgeInsets.fromLTRB(20, 6.0, 20.0, 0),
              child: Chklist(title: Text(item), value: values,onChanged: (value) {
              setState(() {
                values = value;
              });
            },),
            ),
          )
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:homecart/models/lists.dart';
import 'package:homecart/styles/styles.dart';

class CustomTile extends StatelessWidget {

  final Lists lists;

  CustomTile({this.lists});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6.0, 20.0, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Styles.backgroundColor
          ),
          title: Text(lists.title),
        ),
      ),
    );
  }
}
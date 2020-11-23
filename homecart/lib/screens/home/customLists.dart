import 'package:flutter/material.dart';
import 'package:homecart/models/lists.dart';
import 'package:provider/provider.dart';

import 'custom_tile.dart';

class CustomList extends StatefulWidget {
  @override
  _CustomListState createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    final lists = Provider.of<List<Lists>>(context);
    
    return ListView.builder(
      shrinkWrap: true,
      itemCount: lists.length,
      itemBuilder: (context, index) {
        return CustomTile(lists: lists[index]);
      },
    );
  }
}
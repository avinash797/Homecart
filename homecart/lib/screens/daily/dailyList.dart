import 'package:flutter/material.dart';
import 'package:homecart/models/lists.dart';
import 'package:homecart/screens/daily/daily_tile.dart';
import 'package:provider/provider.dart';


class DailyList extends StatefulWidget {
  @override
  _DailyListState createState() => _DailyListState();
}

class _DailyListState extends State<DailyList> {
  @override
  Widget build(BuildContext context) {
    final lists = Provider.of<List<Lists>>(context);
    
    return ListView.builder(
      shrinkWrap: true,
      itemCount: lists.length,
      itemBuilder: (context, index) {
        return DailyTile(lists: lists[index]);
      },
    );
  }
}
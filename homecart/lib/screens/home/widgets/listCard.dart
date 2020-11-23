import 'package:flutter/material.dart';
import 'package:homecart/styles/styles.dart';
import 'package:homecart/widgets/cards.dart';
import 'package:homecart/widgets/listtile.dart';

class ListCard extends StatefulWidget {

  final String listTitle;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Function onPress;

  const ListCard({Key key, this.listTitle, this.leadingIcon, this.trailingIcon, this.onPress}) : super(key: key);

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {

   List<ListCard> shoppingTitle = [
    ListCard(
      leadingIcon: Icons.cake,
      listTitle: 'Anish\'s Birthday',
      onPress: () {},
    ),
    ListCard(
      leadingIcon: Icons.train,
      listTitle: 'Colorado Trip',
      onPress: () {},
    ),
    ListCard(
      leadingIcon: Icons.fastfood,
      listTitle: 'Picnic',
      onPress: () {},
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Column(
                  children: shoppingTitle.map((titles) {
                    return BasicCard(
                      elevation: 20,
                      child: Container(
                        decoration: Styles.tilesDeco,
                        child: Tiles(
                          leading: Icon(titles.leadingIcon),
                          title: Text(
                            titles.listTitle,
                            style: Styles.cardHeading,
                          ),
                          trailing: IconButton(
                              icon: Icon(Icons.delete_forever),
                              onPressed: titles.onPress),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
  }
}
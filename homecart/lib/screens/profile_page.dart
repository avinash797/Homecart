import 'package:flutter/material.dart';
import 'package:homecart/styles/styles.dart';
import 'package:homecart/widgets/cards.dart';
import 'package:homecart/widgets/listtile.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Styles.height,
          width: Styles.width,
          decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.purple,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BasicCard(
                      color: Colors.white,
                      child: Tiles(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.teal[900],
                        ),
                        title: Text(
                          '+1 345-777-777',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      )),
                ),
              ]),
        ),
      ),
    );
  }
}

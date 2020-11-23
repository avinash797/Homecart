import 'package:flutter/material.dart';
import 'package:homecart/services/auth.dart';
import 'package:homecart/styles/styles.dart';
import 'listtile.dart';

class MainDrawer extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('John Doe', style: Styles.basicHeading),
            accountEmail: Text(
              'john.doe@selu.edu',
              style: Styles.basicHeading,
            ),
            currentAccountPicture: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: CircleAvatar(
                backgroundColor: Colors.purple,
              ),
            ),
            decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Tiles(title: Text('Daily List')),
          Divider(),
          Tiles(title: Text('Settings')),
          Divider(),
          Tiles(title: Text('Profile')),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(
                    thickness: 3,
                  ),
                  FlatButton(onPressed: () async {
                      await _auth.signOut();
                    }, child: Text('Sign Out', textAlign: TextAlign.left,)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

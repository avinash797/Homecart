import 'package:flutter/material.dart';
import 'package:homecart/models/user.dart';
import 'package:homecart/screens/authenticate/authenticate.dart';
import 'package:homecart/widgets/navigation.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return NavigationBar();
    }
  }
}

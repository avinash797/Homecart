import 'package:flutter/material.dart';
import 'package:homecart/models/user.dart';
import 'package:homecart/screens/authenticate/login_page.dart';
import 'package:homecart/screens/authenticate/register.dart';
import 'package:homecart/screens/daily/dailyList_page.dart';
import 'package:homecart/screens/home/home_screen.dart';
import 'package:homecart/screens/profile_page.dart';
import 'package:homecart/screens/wrapper.dart';
import 'package:homecart/services/auth.dart';
import 'package:homecart/widgets/navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value( 
      value: AuthService().user,
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
        routes: {
          '/home': (context) => Home(),
          '/profile': (context) => Profile(),
          '/login': (context) => Login(),
          '/daily': (context) => DailyListPage(),
          '/navigation': (context) => NavigationBar(),
          '/register': (context) => Register()
        },
      ),
    );
  }
}

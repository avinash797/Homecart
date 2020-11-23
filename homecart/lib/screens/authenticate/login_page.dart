import 'package:flutter/material.dart';
import 'package:homecart/constants/constants.dart';
import 'package:homecart/constants/loading.dart';
import 'package:homecart/services/auth.dart';
import 'package:homecart/styles/styles.dart';

class Login extends StatefulWidget {
  final Function toggleView;

  const Login({Key key, this.toggleView}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String email;
  String password;
  String error='';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sign In", style: Styles.pageHeading),
          backgroundColor: Styles.backgroundColor,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                validator: (value) => value.isEmpty ? 'Enter an email' : null,
                decoration: textInputDecoration.copyWith(
                    hintText: "Email", prefixIcon: Icon(Icons.email)),
                onChanged: (value) {
                  setState(() => email = value);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                validator: (value) => value.length < 6
                    ? 'Password too short, enter 6+ characters'
                    : null,
                obscureText: true,
                decoration: textInputDecoration.copyWith(
                   hintText: "Password", prefixIcon: Icon(Icons.vpn_key)),
                onChanged: (value) {
                  setState(() => password = value);
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    setState(() => loading = true);
                    dynamic result =
                        await _auth.signInWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() => {
                      error = 'Incorrect Credentials!',
                      loading = false
                      }
                      );
                    }
                  }
                },
                child: Text('Sign in'),
              ),
               SizedBox(height: 12),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member yet?', style: TextStyle(fontSize: 16, color: Styles.backgroundColor),),
                  TextButton(
                    child: Text(
                      'Register',
                      style: Styles.listHeading.copyWith(color: Color(0xFFF7FE72)),
                    ),
                    onPressed: () {
                      widget.toggleView();
                    },
                  ),
                ],
              ),
              
            ]),
          ),
        ),
      ),
    );
  }
}

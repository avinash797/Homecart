import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:homecart/models/lists.dart';
import 'package:homecart/screens/daily/dailyList.dart';
import 'package:homecart/styles/styles.dart';
import 'package:homecart/services/database.dart';
import 'package:provider/provider.dart';


class DailyListPage extends StatelessWidget {

  Future<String> addCustomList(BuildContext context){

    TextEditingController customController = TextEditingController();
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
      title: Text('Enter Item'),
      content: TextField(
        controller: customController,
      ),
      actions: <Widget>[
        MaterialButton(
          elevation: 5.0,
          child: Text("Submit"),
          onPressed: (){
            Navigator.of(context).pop(customController.text.toString());
          })
      ],
      
    );
    });
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return StreamProvider<List<Lists>>.value(
      value: DatabaseService().lists,
          child: SafeArea(
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
            child: SingleChildScrollView(
              physics:
                  BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              child: Column(children: <Widget>[
                SizedBox(
                    width: width,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Daily\nShopping List',
                          style: Styles.pageHeading,
                          textAlign: TextAlign.center,
                        )),
                    height: 198),
                    DailyList(),
                
              ]),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.orange[700],
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            label: Text(
              'New Item(s)',
              style: Styles.floatButton,
            ),
            onPressed: () {
              addCustomList(context).then((value) {
                SnackBar mySnackbar = SnackBar(content: Text("$value added!"));
                Scaffold.of(context).showSnackBar(mySnackbar);
              });
            },
          ),
        ),
      ),
    );
  }
}

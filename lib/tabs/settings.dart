import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final textcontroller = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.reference();
  final Future<FirebaseApp> _future = Firebase.initializeApp();

  void addData(String data) {
    databaseRef.push().set({'name': data, 'comment': 'A good season'});
  }

  void printFirebase() {
    databaseRef.once().then((DataSnapshot snapshot) {
      print('Data : ${snapshot.value}');
    });
  }

  @override
  Widget build(BuildContext context) {
    printFirebase();
    return FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 250.0),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      controller: textcontroller,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                      child: MaterialButton(
                          color: Colors.pinkAccent,
                          child: Text("Save to Database"),
                          onPressed: () {
                            addData(textcontroller.text);
                            //call method flutter upload
                          })),
                ],
              ),
            );
          }
        });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpitfinal/widgets/Resume.dart';
import 'package:mpitfinal/widgets/signal.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Image.asset('assets/images/ava.png'),
              height: 135,
              width: 135,
            ),
            Container(
              //child: Image.asset('assets/images/ava2.png'),
              height: 135,
              width: 215,
              color: Colors.blue,
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Text('Кириллин Александр',
                    style: TextStyle(fontSize: 14, color: Colors.white)),
              ),
            ),
          ],
        ),
        Container(
            margin: EdgeInsets.fromLTRB(10, 100, 10, 0),
            height: 50,
            color: Colors.blue,
            child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signal()),
                    );
                  },
                  child: Text(
                    'Резюме',
                    style: TextStyle(color: Colors.white),
                  )),
            )),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text('Информация')
      ],
    );
  }
}

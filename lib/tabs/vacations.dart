import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vacations extends StatefulWidget {
  @override
  _VacationsState createState() => _VacationsState();
}

class _VacationsState extends State<Vacations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 20,
              width: 75,
              color: Colors.blue,
              child: Center(
                child: Text('Все'),
              ),
            ),
            Container(
              height: 20,
              width: 75,
              color: Colors.grey,
              child: Center(
                child: Text('Стартапы'),
              ),
            ),
            Container(
              height: 20,
              width: 75,
              color: Colors.grey,
              child: Center(
                child: Text('Фриланс'),
              ),
            ),
            Container(
              height: 20,
              width: 75,
              color: Colors.grey,
              child: Center(
                child: Text('Компании'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 110,
          width: 350,
          child: Image.asset('assets/images/Cardwork.png'),
        ),
        SizedBox(height: 20),
        Container(
          height: 110,
          width: 350,
          child: Image.asset('assets/images/Cardwork.png'),
        ),
        SizedBox(height: 20),
        Container(
          height: 110,
          width: 350,
          child: Image.asset('assets/images/Cardwork.png'),
        ),
        SizedBox(height: 20),
        Container(
          height: 110,
          width: 350,
          child: Image.asset('assets/images/Cardwork.png'),
        ),
        SizedBox(height: 20),
        Container(
          height: 110,
          width: 350,
          child: Image.asset('assets/images/Cardwork.png'),
        ),
      ],
    );
  }
}

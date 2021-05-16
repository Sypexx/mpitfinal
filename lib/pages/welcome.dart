import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/images/Login1.png',
  'assets/images/Login2.png',
  'assets/images/Login3.png'
];

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 225,
        ),
        Center(
            child: CarouselSlider(
          options: CarouselOptions(autoPlay: true),
          items: imgList
              .map((item) => Container(
                    child: Center(
                        child:
                            Image.asset(item, fit: BoxFit.cover, width: 1000)),
                  ))
              .toList(),
        )),
        Center(
          child: Text(
            'Добро пожаловать',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ),
        SizedBox(),
        Container(
          margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
          child: Center(
              child: Text(
            '"Дизайн - это не то как предмет',
            style: TextStyle(letterSpacing: 1.0),
          )),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(50, 10, 60, 0),
          child: Center(
              child: Text(
            'выглядит, а то, как он работает."',
            style: TextStyle(letterSpacing: 1.0),
          )),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(75, 10, 75, 0),
          child: Center(
              child: Text(
            '- Стив Джобс',
            style: TextStyle(letterSpacing: 1.0),
          )),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
            height: 60,
            width: 360,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/RegPage');
              },
              child: Text(
                'ЗАРЕГИСТРИРОВАТЬСЯ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(9, 159, 227, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            )),
        SizedBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text('Уже зарегистрировались?')),
            Container(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/LogPage');
                },
                child: Text(
                  'Войти',
                  style: TextStyle(color: Color.fromRGBO(31, 118, 186, 1)),
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}

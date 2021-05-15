import 'package:flutter/material.dart';
import 'package:mpitfinal/reg_page/logpage.dart';
import 'package:mpitfinal/reg_page/regpage.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'mainapp/menupage.dart';
import 'reg_page/mainpage.dart';
import 'splash_screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    '/Home': (BuildContext context) => HomeScreen(),
    '/LogPage': (BuildContext context) => LogPage(),
    '/RegPage': (BuildContext context) => RegPage(),
    '/HomePage': (BuildContext context) => HomePage(),
  };
  @override
  Widget build(BuildContext context) {
    OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

    OneSignal.shared.init("69c24670-1199-46f2-b7ae-c1b7898f5bdf", iOSSettings: {
      OSiOSSettings.autoPrompt: false,
      OSiOSSettings.inAppLaunchUrl: false
    });
    OneSignal.shared
        .setInFocusDisplayType(OSNotificationDisplayType.notification);
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Century'),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(nextRoute: '/Home'),
      routes: routes,
    );
  }
}

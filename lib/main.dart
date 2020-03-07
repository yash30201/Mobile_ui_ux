import 'package:flutter/material.dart';
import 'package:mobileuiux/pages/home.dart';
import 'package:mobileuiux/pages/otp_screen.dart';
import 'package:mobileuiux/pages/tell_more.dart';
import 'package:mobileuiux/pages/walkthrough.dart';
import 'package:mobileuiux/pages/load.dart';

void main() => runApp(myApp());

Widget myApp() {
  return MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      accentColor: Colors.black,

      fontFamily: 'Roboto',

    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Load(),
      '/home': (context) => Home(),
      '/tellmore': (context) => TellMore(),
      '/walkthrough': (context) => WalkThrough(),
      '/otp': (context) => OtpScreen(),
    },
  );
}

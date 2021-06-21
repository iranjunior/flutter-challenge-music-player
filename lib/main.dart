import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/constantes/colors.dart';
import './pages/pages.dart';

void main() {
  runApp(EntryApp());
}

class EntryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.black),
        primaryColor: Color(kPrimaryColor),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 32.0, color: Colors.black, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
          caption: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          subtitle2: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          headline2: TextStyle(
            fontSize: 16.0,
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
          bodyText1: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
          bodyText2: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

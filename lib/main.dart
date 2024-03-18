import 'package:flutter/material.dart';
import 'package:worldtimeproj/pages/choose_location.dart';
import 'package:worldtimeproj/pages/home.dart';
import 'package:worldtimeproj/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    //home: Home(),
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}

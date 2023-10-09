import 'package:flutter/material.dart';
import 'package:flutter_application_1/project.dart';
import 'Achieve.dart';
import 'about.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    theme: ThemeData(),
    routes: {
      'home': (Context) => Myhome(),
      'about': (context) => Myabout(),
      'project': (context) => Myproject(),
      'Achievement': (context) => MyAcheivement(),
    },
  ));
}

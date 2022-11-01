// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:practice_2/pages/submit.dart';
import 'pages/home.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/home",
      routes: {
        '/home': (context) => Home(),
        '/submit': (context) => Submit(),
      },
    ));

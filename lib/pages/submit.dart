// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Submit extends StatelessWidget {
  const Submit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 20, 23, 1),
      body: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        child: Container(
          width: 600,
          height: 300,
          color: Color.fromRGBO(37, 45, 55, 1),
          // padding: EdgeInsets.fromLTRB(, top, right, bottom),
          margin: EdgeInsets.all(10),
          child: Text(
            'welcome',
            style: TextStyle(color: Colors.white),
          ),
        ),
      )),
    );
  }
}
// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_element, avoid_unnecessary_containers
import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

class Rate {
  final int rate;

  const Rate(this.rate);
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: dead_code
  int rate = 0;
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    Color? getColor(Set<MaterialState> states) {
      Color mySpecialColor = Colors.white;
      Color myHoveredColor = Colors.white;
      Color myFocusedColor = Colors.white;
      Color myDefaultColor = Colors.orange;
      Color myPressedColor = Colors.white;

      if (states.contains(MaterialState.focused) &&
          states.contains(MaterialState.hovered)) {
        return mySpecialColor;
      } else if (states.contains(MaterialState.focused)) {
        return myFocusedColor;
      } else if (states.contains(MaterialState.hovered)) {
        return myHoveredColor;
      } else if (states.contains(MaterialState.selected)) {
        return myPressedColor;
      }

      return myDefaultColor;
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 20, 23, 1),
      body: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        child: Container(
            width: 600,
            height: 450,
            color: Color.fromRGBO(37, 45, 55, 1),
            padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.star,
                    color: Color(0xFF252D37),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "How did we do?",
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering! ",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color.fromARGB(158, 255, 255, 255),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        if (rate == 1) {
                          setState(() {
                            rate = 0;
                            _isActive = false;
                          });
                        } else {
                          setState(() {
                            rate = 1;
                            _isActive = true;
                          });
                        }
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(158, 255, 255, 255),
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        decoration: rate != 1
                            ? BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(18, 20, 23, 1),
                              )
                            : BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rate == 2) {
                          setState(() {
                            rate = 0;
                          });
                        } else {
                          setState(() {
                            rate = 2;
                          });
                        }
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                          child: Text(
                            '2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(158, 255, 255, 255),
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        decoration: rate != 2
                            ? BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(18, 20, 23, 1),
                              )
                            : BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rate == 3) {
                          setState(() {
                            rate = 0;
                          });
                        } else {
                          setState(() {
                            rate = 3;
                          });
                        }
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                          child: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(158, 255, 255, 255),
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        decoration: rate != 3
                            ? BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(18, 20, 23, 1),
                              )
                            : BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rate == 4) {
                          setState(() {
                            rate = 0;
                          });
                        } else {
                          setState(() {
                            rate = 4;
                          });
                        }
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                          child: Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(158, 255, 255, 255),
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        decoration: rate != 4
                            ? BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(18, 20, 23, 1),
                              )
                            : BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (rate == 5) {
                          setState(() {
                            rate = 0;
                          });
                        } else {
                          setState(() {
                            rate = 5;
                          });
                        }
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                          child: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(158, 255, 255, 255),
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        decoration: rate != 5
                            ? BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(18, 20, 23, 1),
                              )
                            : BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Submit(
                                    rate: rate,
                                  ))));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith(getColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(255, 152, 0, 1)))),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 110),
                      child: Text('Submit',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700)),
                    )),
              ],
            )),
      )),
    );
  }
}

class Submit extends StatelessWidget {
  const Submit({super.key, required this.rate});

  final int rate;
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/Screenshot.png",
                width: 100,
                height: 70,
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                child: Text(
                  "You selected $rate out of 5",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(52, 0, 0, 0),
                  borderRadius: BorderRadius.circular(28.0),
                  // borderRadius: Radius.circular(10, 10)
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Thank you',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We appreciate you taking the time to give a rating. if you ever need more support, don't hesitate to get in touch.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(113, 255, 255, 255),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

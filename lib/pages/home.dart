// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_element
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  // ignore: dead_code

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
                    Container(
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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(18, 20, 23, 1),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("object 11");
                      },
                      onDoubleTap: () {
                        print("object");
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
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(18, 20, 23, 1),
                        ),
                      ),
                    ),
                    Container(
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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(18, 20, 23, 1),
                      ),
                    ),
                    Container(
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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(18, 20, 23, 1),
                      ),
                    ),
                    Container(
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
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(18, 20, 23, 1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, '/submit');
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

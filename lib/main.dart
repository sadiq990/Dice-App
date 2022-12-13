import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(
    MaterialApp(
      home: (Scaffold(
        backgroundColor: Color.fromARGB(255, 10, 182, 130),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dice App',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 8, 133, 122),
        ),
        body: DartApp(),
      )),
    ),
  );
}

class DartApp extends StatefulWidget {
  const DartApp({Key? key}) : super(key: key);

  @override
  State<DartApp> createState() => _DartAppState();
}

class _DartAppState extends State<DartApp> {
  //VARIABLES
  int randomNumberLeft = 1;
  int randomNumberRight = 1;
  //function for random number
  void randomNumber() {
    setState(() {
      randomNumberLeft = Random().nextInt(6) + 1;
      randomNumberRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          //first image
          Expanded(
            child: TextButton(
              onPressed: () {
                // print('first button is working');
                randomNumber();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/dice$randomNumberLeft.png'),
                ),
              ),
            ),
          ),
          // second image
          Expanded(
            child: TextButton(
              onPressed: () {
                // print('second button is working');
                randomNumber();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('images/dice$randomNumberRight.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

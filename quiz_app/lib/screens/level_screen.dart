import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'dart:ui' as ui;

import '../widgets/level_widget.dart';

class LevelScreen extends StatefulWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  _LevelScreenState createState() => _LevelScreenState();
}

class _LevelScreenState extends State<LevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width:200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.blueGrey,
          ),

            margin: EdgeInsets.all(10.0),
            child: Level("Level 01")
                
        ),
        Container(
            width:200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.blueGrey,
            ),

            margin: EdgeInsets.all(10.0),
            child: Level('Level 02')),
        Container(
            width:200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.blueGrey,
            ),

            margin: EdgeInsets.all(10.0),
            child: Level('Level 03')),
        Container(
            width:200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.blueGrey,
            ),

            margin: EdgeInsets.all(10.0),
            child: Level('Level 04')),
      ],
    );
  }
}


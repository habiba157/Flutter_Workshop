import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/quiz_screen.dart';

class Level extends StatelessWidget {
  String level;
  Level(this.level);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ),
              RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuizScreen()));
                },
                fillColor: Colors.indigoAccent,


                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child:  Text(
                  level,
                  style: const TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

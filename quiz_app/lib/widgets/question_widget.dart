import 'package:flutter/material.dart';
import 'package:quiz_app/model/questions.dart';
import '';
import '../model/questions_data.dart';
Widget QuestionWidget(Question questions, void Function() function , bool pressed){
  return Column(
    children: [
      Container(
        width: double.infinity,
        height: 200.0,
        child: Text(
          '${questions.question}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
      ),
      for (int i = 0; i < questions.answer!.length; i++)
        Container(
          width: double.infinity,
          height: 50.0,
          margin: EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
          child: RawMaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            fillColor: Colors.indigoAccent,
            onPressed: function,
            child: Text(questions.answer!.keys.toList()[i]),
          ),
        )
    ],
  );
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/model/todo.dart';

class ToDoWidget extends StatelessWidget {

  String _name;
  bool _isDone;
  ToDoWidget(this._name,this._isDone);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: 70,
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Text(_name,style:TextStyle(
            color: Colors.black45,
            fontSize: 20.0
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
             (_isDone==true)?Icons.done:Icons.pending,
              color: Colors.orange,
              size: 20.0,
    ),
          ),
        ],
      ),
    );
  }
}

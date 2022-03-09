import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:todo_list_app/model/my_to_dos.dart';
import 'package:todo_list_app/screens/old_tasks.dart';

import '../model/todo.dart';

class AddToDo extends StatefulWidget {

  int x = 0;
  @override
  _AddToDoState createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {

  late TextEditingController nameCtrl;
  late TextEditingController stateCtrl;

  String? val;
  
  @override
  void dispose() {
    // TODO: implement dispose
    nameCtrl.dispose();
    stateCtrl.dispose();


    super.dispose();
  }

  
  @override
  void initState() {
    // TODO: implement initState

    nameCtrl = TextEditingController();
    stateCtrl = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
        decoration: InputDecoration(

         hintText: 'name', ),
        controller: nameCtrl,
    ),
      ),
    //CheckboxListTile(value: , onChanged: onChanged)

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(

      decoration: InputDecoration(

       hintText: 'state', ),
      controller: stateCtrl,
      ),
    ),
    
    MaterialButton(
    onPressed: () {
    MyToDos.todos.add(ToDo(
    nameCtrl.value.text,
    stateCtrl.value.text.contains('done'),
    ));
    //Navigator.pop(context);
    },
      child: Container(
    width: 200,
    height: 60,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20.0),
       color: Colors.orange
     ),
       child: Center(child: Text('Add ToDo'),
      ),
    ),
    ),
        ],

      ),
        bottomNavigationBar:Container(

          margin: EdgeInsets.only(right: 280),
          height: 50.0,
          child: IconButton(
          icon: Icon(Icons.arrow_back,size: 30,color: Colors.orange,),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OldTasks()))
                  .then((value) => setState(() {}));
            }
          ),

        ) ,

    );

  }
}

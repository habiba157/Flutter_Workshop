import 'package:flutter/material.dart';
import 'package:todo_list_app/model/my_to_dos.dart';
import 'package:todo_list_app/screens/add_todo.dart';
import 'package:todo_list_app/screens/register_screen.dart';

import 'package:todo_list_app/widgets/todo_widget.dart';

class OldTasks extends StatefulWidget {
  const OldTasks({Key? key}) : super(key: key);

  @override
  _OldTasksState createState() => _OldTasksState();
}

class _OldTasksState extends State<OldTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ToDo',
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: PopupMenuButton(
                child: Icon(
                  Icons.view_headline_sharp,
                  color: Colors.white,
                  size: 25.0,
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.person,
                                color: Colors.blueGrey,
                                size: 15.0,
                              ),
                            ),
                            Text(
                              'Habiba',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.settings,
                                color: Colors.blueGrey,
                                size: 15.0,
                              ),
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                          child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.logout,
                              color: Colors.blueGrey,
                              size: 15.0,
                            ),
                          ),
                          Text(
                            'Logout',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                        ],
                      ))
                    ]),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: MyToDos.todos.length,
        itemBuilder: (context, index) => ToDoWidget(
          MyToDos.todos[index].name,
          MyToDos.todos[index].isDone,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddToDo()))
              .then((value) => setState(() {}));
        },
        child: Icon(
          Icons.add,
          size: 30.0,
          color: Colors.orange,
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 250),
        height: 50.0,
        child: IconButton(
            icon: Icon(
              Icons.arrow_forward,
              size: 30,
              color: Colors.orange,
            ),
            onPressed: () {
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddToDo()))
                  .then((value) => setState(() {}));
            }),
      ),
    );
  }
}

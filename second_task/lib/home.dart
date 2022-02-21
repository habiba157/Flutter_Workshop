import 'package:flutter/material.dart';

import 'book_menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(

          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: true,
          title:
            const Text(
              'Libray',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),

          leading:
          IconButton(
            icon:const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), onPressed: () {  },
          ),


        ),
        body: ListView(
          children: [
            book_menu('Flutter Complete Refrence'),
            book_menu('Flutter For Beginners'),
            book_menu('Pragmatic Flutter '),
            book_menu('Flutter in action'),
            book_menu('Programming Flutter'),
            book_menu('Flutter Cookbook'),
            book_menu('Beginning Flutter'),
            book_menu('Flutter Projects'),
            book_menu('Practical Flutter '),
            book_menu('Flutter For Dummies'),
            book_menu('Learn Google Flutter'),
          ],
        ));
  }
}



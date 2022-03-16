import 'package:flutter/material.dart';
import 'package:poke_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=>Home(),
      },
      initialRoute: '/',
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                RegisterScreen()
            ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return  Container(
        color: Colors.white,
        alignment: Alignment.center,
        child:Image.asset('assets/TO-DO-LIST.png',
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height ,



        ),
    );
  }
}

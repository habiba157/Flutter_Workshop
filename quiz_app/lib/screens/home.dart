import 'package:flutter/material.dart';
import 'package:quiz_app/screens/level_screen.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar:AppBar(
        backgroundColor: Color.fromRGBO(76, 70, 70, 0.9),
        centerTitle: true,
        shape: RoundedRectangleBorder(),
        title: const Text(
          'Quizzlet',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.tealAccent,
            fontStyle: FontStyle.italic,

          ),
        ),

      ),
      body:
      Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Center(
              child: Text(
                "Let's Play!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Play now and Level up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: Center(

                child: RawMaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LevelScreen()));
                  },
                  fillColor: Colors.indigo,
                  hoverColor: Colors.deepOrangeAccent,
                  splashColor: Colors.deepOrangeAccent,
                  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25.0),
    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Start Quiz',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ),
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home.dart';

class ResultScreen extends StatefulWidget {
  int result;
  ResultScreen(this.result);


  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Good Job!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
              ),
            ),
          ),
          Text(
            'Your result is ${widget.result}/3',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.deepOrange,
              fontSize: 55.0,
              fontWeight: FontWeight.bold,

            ),
          ),

          Container(
            width: 160.0,
            height: 80.0,
            margin: EdgeInsets.only(top: 80.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RawMaterialButton(

                onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));

              },
                shape: const RoundedRectangleBorder(),
                fillColor: Colors.indigo,

                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: const [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(Icons.replay,color: Colors.white,size: 20.0,),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Try Again',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}

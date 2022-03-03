import 'package:flutter/material.dart';
import 'package:quiz_app/model/questions_data.dart';
import 'package:quiz_app/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int result = 0,question_num = 0;
  bool pressed= false, answered = false;
  String button = 'Next';
  PageController? _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          controller: _controller!,
          onPageChanged: (page){
            if(page == Questions.questions.length - 1){
              setState(() {
                button = 'view results';
              });
            }
            setState(() {
              answered = false;
            });
          },
          physics:  const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Q(${index+1}/3)',
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      '${Questions.questions[index].question}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                for(int i =0;i<Questions.questions[index].answer!.length;i++)
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    margin: const EdgeInsets.only(left:15.0,bottom: 10.0,right: 15.0),
                      child: RawMaterialButton(
                        onPressed:!answered ? () {
                          if(Questions.questions[index].answer!.values.toList()[i]){
                            result++;
                            print('Right');
                          }
                          else{
                            print('Wrong');
                          }
                          setState(() {
                            pressed = true;
                            answered = true;
                          });
                        }:null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            Questions.questions[index].answer!.keys.toList()[i],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        fillColor: pressed
                            ? Questions.questions[index].answer!.values.toList()[i]
                              ? Colors.green : Colors.red
                            :Colors.indigoAccent,
                      ),


                  ),
                RawMaterialButton(onPressed: (){
                  if(_controller!.page?.toInt()==Questions.questions.length-1){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(result)));
                  }
                  else{
                    _controller!.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeInExpo);
                    setState(() {
                      pressed = false;
                    });
                  }

                },
                  fillColor: Colors.blueAccent,
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    button,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ],
            );

        },
          itemCount: Questions.questions.length,

    ),
      ),
    );
  }
}

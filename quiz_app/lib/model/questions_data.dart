import 'package:quiz_app/model/questions.dart';

class Questions{
 static List<Question> questions = [
    Question(
      'Who built Flutter ?',{
       'Facebook':false,
      'Google':true,
      'Microsoft':false,
      'Apple':false,
    },),
    Question('Is dart used in flutter ?', {
      'True':true,
      'False':false,
    },),
    Question('Is flutter open source ?',{
      'True':true,
      'false':false,
    },),
  ];
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/old_tasks.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

enum Gender { male, female }

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  late  TextEditingController _mynameController = TextEditingController();
  late TextEditingController _myemailController = TextEditingController();
  Gender? gender = Gender.male;

  @override
  void dispose() {
    // TODO: implement dispose
    _mynameController.dispose();
    _myemailController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    _mynameController = TextEditingController();
    _myemailController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40.0, left: 10, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _mynameController,

                obscureText: false,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                  return null;
                },

              ),
              const Divider(color: Colors.transparent),
              TextFormField(
                controller: _myemailController,
                obscureText: false,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                  return null;
                },
              ),
              const Divider(
                color: Colors.transparent,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Male',style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black
                    ),),
                     Radio<Gender>(

                        value: Gender.male,
                        groupValue: gender,
                        onChanged: (Gender? value) {
                          setState(() {
                            gender = value;
                            color:
                            Colors.blue;
                            fontWeight:
                            FontWeight.bold;
                          });
                        },
                      ),


                    Text('Female',style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black
                    ),),

                    Radio<Gender>(
                      value: Gender.female,
                      groupValue: gender,
                      onChanged: (Gender? value) {
                        setState(() {
                          gender = value;

                        });
                      },
                    ),
                  ],
                ),
              ),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OldTasks()));
            },
            child: Container(
              width: 160.0,
              height: 60.0,
              margin: EdgeInsets.only(top: 22.0),
              padding: EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.shade200,
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        spreadRadius: 2)
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color.fromRGBO(34, 132, 229,1), Color.fromRGBO(10, 47, 84,1)])),
              child: const Text(
                'Register Now',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
            ],
          ),
        ),

      ),
    );
  }
}

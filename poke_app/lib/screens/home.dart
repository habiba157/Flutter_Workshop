import 'package:flutter/material.dart';
import 'dart:async';

import 'package:poke_app/model/poke_api.dart';

import '../widgets/poke_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late StreamController _streamController;
  late Stream _stream;
  late PokeApi _pokiApi;

  @override
  void initState() {
    // TODO: implement initState



    super.initState();

    _streamController = StreamController();
    _stream = _streamController.stream;
    _pokiApi = PokeApi();
    getPokemons();
  }

  getPokemons() async{
    var response = await _pokiApi.getPokemons();
    _streamController.add(response);
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Poke App',style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,

      ),
      body: Center(
        child: StreamBuilder(
          stream: _stream,
          builder: (context,snapshot){
            if(snapshot.hasData){
              var myData = snapshot.data as Map;
              return ListView.builder(

                  itemCount :myData['pokemon'].length,
                  itemBuilder: (context, index) => PokeContainer(index,myData['pokemon'][index],

              ));
            }
            return const CircularProgressIndicator();
          },




        ),
      ),
    )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:poke_app/model/pokemon.dart';
import 'package:url_launcher/url_launcher.dart';

class PokeContainer extends StatelessWidget {

  final int index;
  final dynamic data;
  late Pokemon _pokemon;

   PokeContainer(this.index,this.data,{Key? key}) : super(key: key){
     _pokemon = Pokemon(data['img'], data['name']);
   }

  @override
  Widget build(BuildContext context) {
    return Container(

      height: double.infinity,
      width: double.infinity,
      margin: const EdgeInsets.all(5.0),
      //padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.blue,width:0.3),


      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            _pokemon.img,
            height: 72.4,
            //cacheHeight: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
            child: Text(
              _pokemon.name,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),

            ],
          ),




    );
  }
}

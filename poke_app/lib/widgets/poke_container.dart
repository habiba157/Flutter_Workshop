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
      width: 50,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.blue,width:0.3),

          
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.network(
                    _pokemon.img,
                  ),
                  Text(
                    _pokemon.name,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              Divider(
                color: Colors.black26,
                thickness: 3,
                height: 50,
              ),
              Column(
                children: [
                  Image.network(
                    _pokemon.img,
                  ),
                  Text(
                    _pokemon.name,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

            ],
          ),


        ],
      ),
    );
  }
}

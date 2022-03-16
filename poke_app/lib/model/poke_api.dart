import 'package:http/http.dart';
import 'dart:convert';

class PokeApi{
  final String url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  getPokemons() async{
    try{
      Response response = await get(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
      );
      var list = jsonDecode(response.body);
      return list;
    }catch(e){
      print(e);
    }
  }
}
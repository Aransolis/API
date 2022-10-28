import 'package:practica1/models/personaje.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class ApiPersonajes{
    var url = Uri.parse("https://gateway.marvel.com/v1/public/characters?nameStartsWith=Spider&orderBy=name&ts=1000&apikey=b752eaad2dc5f1244855392fc735c40f&hash=1201d6711838ca7e36db4c7e3e99c277");
    

    Client http = new Client();

  Future<List<Personaje>?> getCharacter() async{
    final response = await http.get(url);
    if(response.statusCode == 200){
      var personajes = jsonDecode(response.body)['data']['results'] as List;
      List<Personaje> listpersonajes = personajes.map((personaje) => Personaje.fromJSON(personaje)).toList();
      return listpersonajes;
    }else{
      return null ;
    }
  }
}
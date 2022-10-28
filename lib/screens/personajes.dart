import 'package:practica1/network/api_personajes.dart';
import 'package:practica1/models/personaje.dart';
import 'package:flutter/material.dart';

import 'card_personajes.dart';

class Personajes extends StatefulWidget {
  Personajes({Key? key}) : super(key: key);

  @override
  _PersonajesState createState() => _PersonajesState();
}

class _PersonajesState extends State<Personajes> {
  late ApiPersonajes apiPersonajes;

  @override
  void initState() {
    super.initState();
    apiPersonajes = ApiPersonajes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Text('Superheroes'), centerTitle: true,
        flexibleSpace: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    const Color(0xFFD500F9),
                    const Color(0x1F000000),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
        ),
        
      ),
      body: FutureBuilder(
        future: apiPersonajes.getCharacter(),
        builder: (BuildContext context, AsyncSnapshot<List<Personaje>?> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Has error in the request '));
          } else if (snapshot.connectionState == ConnectionState.done) {
            return _listPersonajes(snapshot.data!);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

Widget _listPersonajes(List<Personaje> personajes) {
    return ListView.builder(
      itemBuilder: (context, index) {
        Personaje personaje = personajes[index];
        return CardPersonajes(personaje: personaje);
      },
      itemCount: personajes.length,
    );
  }






}

import 'package:practica1/screens/interfaz.dart';
import 'package:practica1/models/personaje.dart';
import 'package:flutter/material.dart';

class CardPersonajes extends StatelessWidget {
  const CardPersonajes({Key? key, required this.personaje}) : super(key: key);

  final Personaje personaje;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        decoration: BoxDecoration(
          
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Colors.white,
              width: 8,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.red,
                  offset: Offset(0.0, 5.0),
                  blurRadius: 1.0)
            ]),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Stack(alignment: Alignment.topCenter, children: [
              Container(
                child: FadeInImage(
                  placeholder: AssetImage('assets/loading_movie.gif'),
                  image: NetworkImage(personaje.path! + "." + personaje.exten!),
                  fadeInDuration: Duration(milliseconds: 100),
                ),
              ),
              Opacity(
                opacity: .7,
                child: Container(
                  height: 50.0,
                  color: Colors.red[800],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                      children: [
                        Flexible(
                          child: Text(
                            personaje.id.toString() + ": " + personaje.name!,
                            style: TextStyle(color: Colors.white),
                            
                          ),
                        ),
                        Flexible(
                          child: TextButton(
                            child: Icon(Icons.chevron_right, color: Colors.white),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Interfaz([
                                personaje.id.toString(),
                                personaje.name!,
                                personaje.description!,
                                personaje.path!,
                                personaje.exten!
                              ])));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ])));
  }
}

import 'package:flutter/material.dart';

class Interfaz extends StatefulWidget {
  List<String> valores = [];
  Interfaz(this.valores, {Key? key}) : super(key: key);

  @override
  _InterfazState createState() => _InterfazState();
}

class _InterfazState extends State<Interfaz> {
  @override
  Widget build(BuildContext context) {
    final String bandera = widget.valores[2].toString();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.valores[1],
            style: TextStyle(fontWeight: FontWeight.w200),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
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
        body: Container(
          decoration: new BoxDecoration(
            
            gradient: new LinearGradient(
              
                colors: [
                  const Color(0xFFE53935),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
                
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                widget.valores[0],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontStyle: FontStyle.italic, height: 2.0, fontSize: 20),
              ),
              Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 80.0, vertical: 70.0),
                  width: 250,
                  height: 250,
                  decoration: new BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 8,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      image: new DecorationImage(
                        image: new NetworkImage(
                            widget.valores[3] + "." + widget.valores[4]),
                        fit: BoxFit.cover,
                      ))),
              if (widget.valores[2].toString() != '')
                Card(
                  
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  //elevation: 5,
                  child: Text(
                    widget.valores[2],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        height: 2.0,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                )
            ],
          ),
        ));
  }
}

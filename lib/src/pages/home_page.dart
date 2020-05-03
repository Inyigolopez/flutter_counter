

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 30);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: estiloTexto),
            Text('$conteo', style: estiloTexto)
          ],
        )
        
      ),
      floatingActionButton: FloatingActionButton(
        child:  Icon( Icons.add),
        onPressed: (){
          print('Hola');
          //conteo = conteo + 1;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat
    );
  }



}
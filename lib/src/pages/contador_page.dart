import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }

} 


class _ContadorPageState extends State<ContadorPage> {
  
  final _estiloTexto = new TextStyle(fontSize: 30);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto)
          ],
        )
        
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat
    );
  }


Widget _crearBotones(){

  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      SizedBox( width: 30.0),
      FloatingActionButton(
        child:  Icon( Icons.exposure_zero ),
        onPressed: (){
          
          setState(() {
            _conteo = 0;
          });

        },
      ),
      Expanded(child: SizedBox()),
      FloatingActionButton(
        child:  Icon( Icons.remove ),
        onPressed: (){          
          setState( () => _conteo-- );
        },
      ),
      SizedBox( width: 5.0),
      FloatingActionButton(
        child:  Icon( Icons.add ),
        onPressed: (){
          
          setState(() {
            _conteo++;
          });

        },
      ),
    ],
  ); 
  
  
  
 

}


}
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  
  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 25 );
  int _conteo = 10;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Número de clicks : ', style: _estiloTexto ),
            Text('$_conteo', style: _estiloTexto )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30.0 ),
        FloatingActionButton( onPressed: _reiniciar, child: Icon( Icons.refresh ), ),
        Expanded(child: SizedBox()),
        FloatingActionButton( onPressed: _decrementar, child: Icon( Icons.remove ), ),
        SizedBox( width: 30.0 ),
        FloatingActionButton( onPressed: _incrementar, child: Icon( Icons.add ), )
      ],
    );
  }

  void _incrementar() => setState( () =>_conteo++ );
  void _decrementar() => setState( () =>_conteo-- );
  void _reiniciar()   => setState( () => _conteo=0);

} 
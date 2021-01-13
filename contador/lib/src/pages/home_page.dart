import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle estiloTexto = new TextStyle(fontSize: 25);
  final int conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de clicks:',
              style: estiloTexto,
            ),
            Text(
              '$conteo',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print('Hola a todos')},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

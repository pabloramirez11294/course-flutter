import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return ListView(
      children: _listaItems(),
    );
  }

  List<Widget> _listaItems() {
    return [
      ListTile(
        title: Text('Opcion1'),
      ),
      Divider(),
      ListTile(
        title: Text('Opcion2'),
      ),
      Divider(),
      ListTile(
        title: Text('Opcion3'),
      ),
      Divider(),
    ];
  }
}

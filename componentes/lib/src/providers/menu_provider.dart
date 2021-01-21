import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final datos = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(datos);
    //print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();

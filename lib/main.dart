import 'package:flutter/material.dart';
import 'package:aleman/pagina1.dart';
import 'package:aleman/pagina2.dart';
import 'package:aleman/pagina3.dart';
import 'package:aleman/pagina4.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes Demo',
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => Pantalla1(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/segunda': (context) => Pantalla2(),

      '/tercera': (context) => Pantalla3(),
      '/cuarta': (context) => Pantalla4(),
    },
  ));
}

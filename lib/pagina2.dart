import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd40086), // Will work

        title: const Text("Segunda pantalla"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Página 3'),
          onPressed: () {
            // Navega a la segunda pantalla usando una ruta con nombre
            Navigator.pushNamed(context, '/cuarta');
          },
        ),
      ),
    );
  }
}

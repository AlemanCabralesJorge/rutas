import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd40086),
        title: const Text('Primera pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Página inicial'),
          onPressed: () {
            // Navega a la segunda pantalla usando una ruta con nombre
            Navigator.pushNamed(context, '/segunda');
          },
        ),
      ),
    );
  }
}

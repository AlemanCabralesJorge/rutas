import 'package:flutter/material.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd40086), // Will work
        title: const Text("Tercera Pantalla"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xFF0000)),
              accountName: Text(
                "Jorge Alemán Cabrales",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "jorge@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            //const DrawerHeader(
            //decoration: BoxDecoration(
            //color: Colors.deepPurple,
            //),
            //child: Text('Encabezado del drawer'),
            // ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: const Text('Pagina 1'),
              onTap: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
              ),
              title: const Text('Pagina 2'),
              onTap: () {
                Navigator.pushNamed(context, '/segunda');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.badge,
              ),
              title: const Text('Pagina 4'),
              onTap: () {
                Navigator.pushNamed(context, '/tercera');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navega de regreso a la primera pantalla haciendo clic en la ruta actual
            // fuera de la pila
            Navigator.pushNamed(context, '/tercera');
          },
          child: const Text('Página 4!'),
        ),
      ),
    );
  }
}

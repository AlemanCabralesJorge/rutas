// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:aleman/pagina1.dart';

class Pantalla3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFd40086), // Will work

            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.alarm)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.person),
              Icon(Icons.home),
              Icon(Icons.alarm),
            ],
          ),
        ),
      ),
    );
  }
}

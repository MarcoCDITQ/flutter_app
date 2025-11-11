import 'package:app_n/screens/detalles.dart';
import 'package:app_n/screens/home_scren.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* title: 'Material App',
      home: HomeScreen() */
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/detalle': (_) =>  const DetallesS(), // This should ideally point to DetallesS with parameters
      },
    );
  }
}


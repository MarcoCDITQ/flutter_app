import 'package:flutter/material.dart';


class DetallesS extends StatelessWidget {
  const DetallesS({super.key});

  @override
  Widget build(BuildContext context) {
    final nombre = ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles Screen nombre'),
      ),
      body:  Center(
        child: Text('El coche es: $nombre'),
      ),
    );
  }
}
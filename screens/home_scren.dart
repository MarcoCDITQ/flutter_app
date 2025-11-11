
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body:  Center(
        child: Column(
          children: [
            Text('Welcome to the Home Screen!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed
                (context, 
                '/detalle', arguments: 'Charger desde home w');
    /*             Navigator.push(
                      context,
                    MaterialPageRoute(
                      builder: 
                      (context) => 
                      DetallesS(nombre :'Charger')), 
                ); */
              },
               child: Text('Ver detalles del coche')
              
               ),
                Text('Welcome to the Home Screen!'),
            ElevatedButton(
              onPressed: () {
 Navigator.pushNamed
                (context, 
                '/detalles', arguments: 'Porsche desde home w');

              },
               child: Text('Ver detalles del Porsche')
              
               )
          ],
        ),
      ),
    );
  }
}
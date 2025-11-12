
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    final Categorias = [
      'Ropa',
      'Calzado',
      'Accesorios',
      'Tecnologia',
      'Hogar',
      'Deportes',
      'Ropa',
      'Calzado',
      'Accesorios',
      'Tecnologia',
      'Hogar',
      'Deportes',
    ];


    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Home Screen'),
      ),
    body: SingleChildScrollView(
child: Column(
  children: [
    Padding(padding: EdgeInsets.all(8.0),
        child: Text('Categorias' ),
    ),
    SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_,_) => SizedBox(width: 12), 
        itemCount: Categorias.length,
        itemBuilder: (context, index)
        {
          final categoria = Categorias[index];
          return Container(
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blueAccent,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(2,2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Text (categoria)
                )
                //Text(categoria),
              ],
            ),
          );
        }
        ),
        
    )
    
  ],
)
    ));
  }
}
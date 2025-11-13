
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
   
   
final categorias = [
  {
    'nombre': 'Tecnología',
    'imagen': 'https://cdn-icons-png.flaticon.com/512/6062/6062646.png'
  },
  {
    'nombre': 'Deportes',
    'imagen': 'https://cdn-icons-png.flaticon.com/512/889/889492.png'
  },
  {
    'nombre': 'Música',
    'imagen': 'https://cdn-icons-png.flaticon.com/512/727/727245.png'
  },
  {
    'nombre': 'Cocina',
    'imagen': 'https://cdn-icons-png.flaticon.com/512/3075/3075977.png'
  },
  {
    'nombre': 'Viajes',
    'imagen': 'https://cdn-icons-png.flaticon.com/512/3062/3062634.png'
  },
];
    final articulos = List.generate(
      10,
      (index) => {'titulo': 'Artículo ${index + 1}', 'desc': 'Descripción breve'},
    );


    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Categorías',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Lista horizontal
            SizedBox(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: categorias.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
              /*   itemBuilder: (context, index) {
                  final categoria = categorias[index];
                  return Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue.shade100,
                    ),
                    
                    child: Center(
                      child: Text(
                        categoria,
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }, */
                itemBuilder: (context, index) {
  final categoria = categorias[index];
  return Container(
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.blue.shade50,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade100,
          blurRadius: 4,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            categoria['imagen']!,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          categoria['nombre']!,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
},
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Artículos recomendados',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Lista vertical
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: articulos.length,
              itemBuilder: (context, index) {
                final art = articulos[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.article_outlined, size: 40),
                    title: Text(art['titulo']!),
                    subtitle: Text(art['desc']!),
                    onTap: () {
                      Navigator.pushNamed(
                        context, 
                        '/detalle',
                        arguments: art['titulo'],
                        );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
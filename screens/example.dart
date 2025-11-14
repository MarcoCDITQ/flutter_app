import 'dart:math';

import 'package:flutter/material.dart';

class ScreenDos extends StatelessWidget {
  const ScreenDos
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Dos')),
      body: SingleChildScrollView(
        child: Column(
          
          //verticalDirection: ,
          children:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
Container(
                width:  100,
                height: 100,
                color: Colors.amber,
                child: Text(
                  'Esta es la pantalla dos',
                  style: TextStyle(fontSize: 24),
                ),
              
            ),
            //SizedBox(width: 50),
               Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Text(
                  'Esta es la pantalla dos',
                  style: TextStyle(fontSize: 24),
                ),
              
            ),
            ],
          ),
SizedBox(height: 50),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
Container(
                width:  100,
                height: 100,
                color: Colors.amber,
                child: Text(
                  'Esta es la pantalla dos',
                  style: TextStyle(fontSize: 24),
                ),
              
            ),
            //SizedBox(width: 50),
               Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Text(
                  'Esta es la pantalla dos',
                  style: TextStyle(fontSize: 24),
                ),
              
            ),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
Container(
                width:  100,
                height: 100,
                color: Colors.amber,
                child: Text(
                  'Esta es la pantalla dos',
                  style: TextStyle(fontSize: 24),
                ),
              
            ),
            //SizedBox(width: 50),
               Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Text(
                  'Esta es la pantalla dos',
                  style: TextStyle(fontSize: 24),
                ),
              
            ),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
Container(
                width:  100,
                height: 100,
                color: Colors.amber,
                child: Text(
                  'Esta es la pantalla dos',
                  style: TextStyle(fontSize: 24),
                ),
              
            ),
            //SizedBox(width: 50),
               Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Text(
                  'Esta es la pantalla dos',
                  style: TextStyle(fontSize: 24),
                ),
              
            ),
            ],
          ), 
              
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'controllers/home_controllers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo Home Page')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Reconocimiento de Texto con ML Kit",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  homeController.scanDni(context);
                },
                child: Center( 
                  child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.camera),
                    SizedBox(width: 8),
                    Text('Seleccionar Imagen'),
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

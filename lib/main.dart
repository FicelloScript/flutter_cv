import 'package:flutter/material.dart';
import 'screen/device.dart'; // Assure-toi d'inclure le bon chemin d'accès pour importer Device

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Device(), // Utiliser Device comme page d'accueil
    );
  }
}

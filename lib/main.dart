import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const ResepAnakKosApp());
}

class ResepAnakKosApp extends StatelessWidget {
  const ResepAnakKosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Anak Kos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
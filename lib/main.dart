import 'package:flutter/material.dart';
import 'screens/placeholder_navigation.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'proyecto',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 84, 2, 224)),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

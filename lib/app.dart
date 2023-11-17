import 'package:flutter/material.dart';
import './auth.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build (BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
      home: const AuthGate(),
    );
  }
}
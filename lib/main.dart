import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const PakPoolApp());
}

class PakPoolApp extends StatelessWidget {
  const PakPoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PakPool',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff08B982),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

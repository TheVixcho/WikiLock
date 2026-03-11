import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const WikiLockApp());
}

class WikiLockApp extends StatelessWidget {
  const WikiLockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WikiLock',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}
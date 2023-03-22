import 'package:example/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xff0D031B),
        useMaterial3: true,
      ),
      theme:ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0xffffffff),
        useMaterial3: true,
      ),
      
      home: HomeScreenPage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:resume/constants/colors.dart';
import 'package:resume/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'resume',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: highlight),
          useMaterial3: true,
          fontFamily: "Montserrat"),
      home: const HomeScreen(),
    );
  }
}

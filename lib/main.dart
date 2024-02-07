import 'package:flutter/material.dart';
import 'package:resume/ui/home_screen.dart';

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
      darkTheme: ThemeData(useMaterial3: true, fontFamily: "Montserrat"),
      home: const HomeScreen(),
    );
  }
}

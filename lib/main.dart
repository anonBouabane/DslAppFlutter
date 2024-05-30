import 'package:dslsale/view/Screen/auth/register_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "phetsarath_ot.ttf"),
      debugShowCheckedModeBanner: false,
      home: const RegisterScreen(),
    );
  }
}

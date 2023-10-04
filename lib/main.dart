import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        color: Colors.deepPurple,
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}

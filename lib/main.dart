import 'package:flutter/material.dart';

import 'view/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: 5 == 4 ? true : false,
      home: Home(),
    );
  }
}

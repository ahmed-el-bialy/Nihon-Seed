import 'package:flutter/material.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(NihonSeed());
}

class NihonSeed extends StatelessWidget {
  const NihonSeed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

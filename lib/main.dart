import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MagicCalc());
}

class MagicCalc extends StatelessWidget {
  const MagicCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Magic Calculator',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

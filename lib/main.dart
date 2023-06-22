import 'package:flutter/material.dart';

import 'package:first_app/gradient01.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //body: GradientContainer([Color(Colors.redAccent)]),
        body: GradientContainer(Color.fromARGB(255, 143, 84, 245),
            Color.fromARGB(255, 71, 102, 240)),
      ),
    ),
  );
}

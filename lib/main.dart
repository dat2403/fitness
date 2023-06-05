import 'package:fitness/common/color_extension.dart';
import 'package:fitness/views/on_boarding/started_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness 3 in 1',
      theme:
          ThemeData(primaryColor: TColor.primaryColor1, fontFamily: "Poppins"),
      home: const StartedView(),
    );
  }
}

// import 'package:button/elevator_button_border/beveled_rectang_border.dart';
// import 'package:button/elevator_button_border/circle_border.dart';
// import 'package:button/elevator_button/stadium_border.dart';
// import 'package:button/button_outline/circle_border.dart';
import 'package:flutter/material.dart';

// import 'button_outline/beveled_rectang_border.dart';
import 'elevator_button_icon/elevator_button_icon.dart';

// import 'elevator_button_border/rouder_rectangle_boder.dart';
// import 'button_outline/rouder_rectangle_border.dart';
// import 'button_outline/stadium_border.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Button",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: const Center(
        child: SizedBox(
          width: 150,
          height: 50,
          child: ElevateButtonIcon(),
        ),
      ),
    );
  }
}

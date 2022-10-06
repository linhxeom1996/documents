import 'package:color_gradien/circle_container_border/circle_container_page.dart';
// import 'package:color_gradien/square_container_border/container_border_page.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CircleContainerBorder(),
    );
  }
}

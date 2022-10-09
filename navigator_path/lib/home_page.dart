import 'package:flutter/material.dart';
import 'package:navigator_path/text_base.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextBase(text: "Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/page1");
          },
          child: const TextBase(text: "Go to Page 1"),
        ),
      ),
    );
  }
}

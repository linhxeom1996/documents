import 'package:flutter/material.dart';
import 'package:navigator_router/widget/text_base.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    String text = "data sen1";
    bool update = true;
    return Scaffold(
      appBar: AppBar(title: const TextBase(text: "Page 1")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/page2/$text/$update');
          },
          child: const TextBase(text: "Page 2"),
        ),
      ),
    );
  }
}

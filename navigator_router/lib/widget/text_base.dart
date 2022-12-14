import 'package:flutter/material.dart';

class TextBase extends StatelessWidget {
  final String text;
  const TextBase({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 15),
    );
  }
}

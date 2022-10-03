import 'package:flutter/material.dart';

class TextBase extends StatelessWidget {
  final String text;
  const TextBase({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black54,
        fontSize: 17,
      ),
    );
  }
}

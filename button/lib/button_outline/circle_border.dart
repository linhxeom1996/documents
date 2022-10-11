import 'package:flutter/material.dart';

class CircleBorderOutlineBtn extends StatelessWidget {
  const CircleBorderOutlineBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      child: const Text(
        "Button",
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}

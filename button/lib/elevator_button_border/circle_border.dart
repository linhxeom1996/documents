import 'package:flutter/material.dart';

class CircleBorderButton extends StatelessWidget {
  const CircleBorderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      child: const Text(
        "Button",
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}

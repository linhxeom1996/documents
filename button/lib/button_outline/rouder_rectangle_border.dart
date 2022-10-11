import 'package:flutter/material.dart';

class RectangleOutlineBtn extends StatelessWidget {
  const RectangleOutlineBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Text(
        "Button",
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}

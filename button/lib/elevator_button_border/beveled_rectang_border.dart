import 'package:flutter/material.dart';

class BeveledRectangBorderButton extends StatelessWidget {
  const BeveledRectangBorderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Text(
        "Button",
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}

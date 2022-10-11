import 'package:flutter/material.dart';

class BeveledBorderOutlineBtn extends StatelessWidget {
  const BeveledBorderOutlineBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: BeveledRectangleBorder(
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

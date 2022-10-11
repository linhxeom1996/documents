import 'package:flutter/material.dart';

class StadiumBorderOutlineBtn extends StatelessWidget {
  const StadiumBorderOutlineBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
      child: const Text(
        "Button",
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StadiumBorderButton extends StatelessWidget {
  const StadiumBorderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
      ),
      child: const Text(
        "Button",
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}

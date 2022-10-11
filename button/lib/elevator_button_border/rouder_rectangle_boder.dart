import 'package:flutter/material.dart';

class RouderRectangleBorderButton extends StatelessWidget {
  const RouderRectangleBorderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
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

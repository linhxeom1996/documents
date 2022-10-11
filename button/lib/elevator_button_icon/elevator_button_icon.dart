import 'package:flutter/material.dart';

class ElevateButtonIcon extends StatelessWidget {
  const ElevateButtonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.thumb_up),
      label: const Text(
        "Like",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

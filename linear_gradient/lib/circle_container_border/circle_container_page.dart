import 'package:flutter/material.dart';

class CircleContainerBorder extends StatelessWidget {
  const CircleContainerBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Border Container",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.white, Colors.redAccent],
            ),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.grey, Colors.black54],
                ),
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.headphones,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

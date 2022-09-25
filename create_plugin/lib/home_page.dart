import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sample_plugin_flutter/sample_plugin_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create library",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SampleButton(
              text: "Sample Button",
              onPressed: () {
                log("Sample Button Click");
              },
            ),
          ],
        ),
      ),
    );
  }
}

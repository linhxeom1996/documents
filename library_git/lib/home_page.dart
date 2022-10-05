import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:linh_button/linh_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Lib"),
        centerTitle: true,
      ),
      body: Center(
        child: MyTextButton(
          text: "Press",
          onPressed: () {
            log("press");
          },
        ),
      ),
    );
  }
}

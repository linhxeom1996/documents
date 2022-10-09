import 'package:flutter/material.dart';
import 'package:navigator_path/contain/person.dart';
import 'package:navigator_path/text_base.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextBase(text: "Page 1"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const TextBase(text: "Go to Page 2"),
          onPressed: () {
            Navigator.pushNamed(
              context,
              "/page2",
              arguments: Person(age: 26, name: "mr. Linh"),
            );
          },
        ),
      ),
    );
  }
}

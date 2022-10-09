import 'package:flutter/material.dart';
import 'package:navigator_path/contain/person.dart';
import 'package:navigator_path/text_base.dart';

class Page2 extends StatelessWidget {
  final Person person;
  const Page2({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextBase(text: "Page 2"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextBase(text: "${person.name} : ${person.age}"),
            const Center(
              child: TextBase(text: "Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}

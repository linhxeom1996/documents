import 'package:flutter/material.dart';
import 'package:navigator_router/widget/text_base.dart';

class Page2 extends StatelessWidget {
  final String text;
  const Page2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextBase(text: "Page 2"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextBase(text: text),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const TextBase(text: "Page 1"),
            ),
          ],
        ),
      ),
    );
  }
}

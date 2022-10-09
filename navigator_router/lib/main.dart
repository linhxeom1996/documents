import 'package:flutter/material.dart';
import 'package:navigator_router/router.dart';
import 'package:navigator_router/widget/text_base.dart';

void main() {
  FluroRouterBase.setupRouter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: FluroRouterBase.router.generator,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextBase(text: "Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const TextBase(
            text: "Page 1",
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/page1');
          },
        ),
      ),
    );
  }
}

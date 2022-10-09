import 'package:flutter/material.dart';
import 'package:navigator_path/contain/person.dart';
import 'package:navigator_path/home_page.dart';
import 'package:navigator_path/page1.dart';
import 'package:navigator_path/page2.dart';
import 'package:navigator_path/routes/routes.dart';
import 'package:page_transition/page_transition.dart';

void main() {
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
      routes: <String, WidgetBuilder>{
        RoutesPath.home: (context) => const HomePage(),
        RoutesPath.page1: (context) => const Page1(),
        RoutesPath.page2: (context) =>
            Page2(person: ModalRoute.of(context)!.settings.arguments as Person),
      },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case RoutesPath.page2:
            return PageTransition(
              child: Page2(
                  person: ModalRoute.of(context)!.settings.arguments as Person),
              type: PageTransitionType.rightToLeft,
              duration: const Duration(seconds: 2),
            );
          default:
            return null;
        }
      },
      initialRoute: "/",
    );
  }
}

import 'package:check_wifi/home/home_bloc.dart';
import 'package:check_wifi/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        title: "My App",
        theme: ThemeData(primaryColor: Colors.blue),
        home: HomePage(),
      ),
    );
  }
}

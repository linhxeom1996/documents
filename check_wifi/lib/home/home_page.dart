import 'package:check_wifi/home/home_bloc.dart';
import 'package:check_wifi/home/home_event.dart';
import 'package:check_wifi/home/home_state.dart';
import 'package:check_wifi/widget/text_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String stateWifi = "initial";

  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(InitialCheckWifiHomeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is WifiDisconnectHomeState) {
          stateWifi = "Disconected";
        } else {
          stateWifi = "Connected";
        }
        return Scaffold(
          appBar: AppBar(
            title: TextBase(
              text: "Wifi Check",
            ),
          ),
          body: Center(
            child: TextBase(text: stateWifi),
          ),
        );
      },
    );
  }
}

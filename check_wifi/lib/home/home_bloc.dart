import 'dart:async';
import 'dart:developer';

import 'package:check_wifi/home/home_event.dart';
import 'package:check_wifi/home/home_repo.dart';
import 'package:check_wifi/home/home_state.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeRepository _homeRepository = HomeRepository();
  late StreamSubscription streamSubscription;

  HomeBloc() : super(WifiDisconnectHomeState()) {
    on<InitialCheckWifiHomeEvent>(_checkWifi);
    on<DisconnectedWifiEvent>(_disconnectWifi);
    on<ConnectedWifiEvent>(_connectedWifi);
  }

  void _checkWifi(
      InitialCheckWifiHomeEvent event, Emitter<HomeState> emit) async {
    await _homeRepository.initialStateWifi();
    streamSubscription = _homeRepository.resultStream.listen((value) {
      if (value == ConnectivityResult.none) {
        add(DisconnectedWifiEvent());
      } else {
        add(ConnectedWifiEvent());
      }
    });
  }

  void _disconnectWifi(DisconnectedWifiEvent event, Emitter<HomeState> emit) {
    return emit(WifiDisconnectHomeState());
  }

  void _connectedWifi(ConnectedWifiEvent event, Emitter<HomeState> emit) {
    return emit(WifiConnectedHomeState());
  }

  void dispose() {
    streamSubscription.cancel();
  }
}

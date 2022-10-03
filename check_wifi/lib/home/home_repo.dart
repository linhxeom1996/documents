import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class HomeRepository {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> streamSubscription;

  StreamController _streamController =
      new StreamController<ConnectivityResult>();

  Stream get resultStream => _streamController.stream;

  Future initialStateWifi() async {
    try {
      ConnectivityResult result = await _connectivity.checkConnectivity();
      _streamController.sink.add(result);
      updateStateWifi(result);
    } catch (e) {
      return e;
    }
  }

  void updateStateWifi(ConnectivityResult result) async {
    streamSubscription = _connectivity.onConnectivityChanged.listen((value) {
      switch (value) {
        case ConnectivityResult.wifi:
          result = ConnectivityResult.wifi;
          _streamController.sink.add(result);
          break;
        case ConnectivityResult.ethernet:
          result = ConnectivityResult.ethernet;
          _streamController.sink.add(result);
          break;
        case ConnectivityResult.mobile:
          result = ConnectivityResult.mobile;
          _streamController.sink.add(result);
          break;
        case ConnectivityResult.none:
          result = ConnectivityResult.none;
          _streamController.sink.add(result);
          break;
      }
    });
  }

  void dispose() {
    streamSubscription.cancel();
    _streamController.close();
  }
}

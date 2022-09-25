import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sample_plugin_flutter/sample_plugin_flutter_method_channel.dart';

void main() {
  MethodChannelSamplePluginFlutter platform = MethodChannelSamplePluginFlutter();
  const MethodChannel channel = MethodChannel('sample_plugin_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

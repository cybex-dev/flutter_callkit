import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_callkit/flutter_callkit.dart';
import 'package:flutter_callkit/flutter_callkit_platform_interface.dart';
import 'package:flutter_callkit/flutter_callkit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCallkitPlatform
    with MockPlatformInterfaceMixin
    implements FlutterCallkitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCallkitPlatform initialPlatform = FlutterCallkitPlatform.instance;

  test('$MethodChannelFlutterCallkit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCallkit>());
  });

  test('getPlatformVersion', () async {
    FlutterCallkit flutterCallkitPlugin = FlutterCallkit();
    MockFlutterCallkitPlatform fakePlatform = MockFlutterCallkitPlatform();
    FlutterCallkitPlatform.instance = fakePlatform;

    expect(await flutterCallkitPlugin.getPlatformVersion(), '42');
  });
}

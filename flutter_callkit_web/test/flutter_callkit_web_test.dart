import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_callkit_web/flutter_callkit_web.dart';
import 'package:flutter_callkit_web/flutter_callkit_web_platform_interface.dart';
import 'package:flutter_callkit_web/flutter_callkit_web_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCallkitWebPlatform
    with MockPlatformInterfaceMixin
    implements FlutterCallkitWebPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCallkitWebPlatform initialPlatform = FlutterCallkitWebPlatform.instance;

  test('$MethodChannelFlutterCallkitWeb is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCallkitWeb>());
  });

  test('getPlatformVersion', () async {
    FlutterCallkitWeb flutterCallkitWebPlugin = FlutterCallkitWeb();
    MockFlutterCallkitWebPlatform fakePlatform = MockFlutterCallkitWebPlatform();
    FlutterCallkitWebPlatform.instance = fakePlatform;

    expect(await flutterCallkitWebPlugin.getPlatformVersion(), '42');
  });
}

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_callkit_web_platform_interface.dart';

/// An implementation of [FlutterCallkitWebPlatform] that uses method channels.
class MethodChannelFlutterCallkitWeb extends FlutterCallkitWebPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_callkit_web');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

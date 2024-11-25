import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_callkit_method_channel.dart';

abstract class FlutterCallkitPlatform extends PlatformInterface {
  /// Constructs a FlutterCallkitPlatform.
  FlutterCallkitPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCallkitPlatform _instance = MethodChannelFlutterCallkit();

  /// The default instance of [FlutterCallkitPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCallkit].
  static FlutterCallkitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCallkitPlatform] when
  /// they register themselves.
  static set instance(FlutterCallkitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

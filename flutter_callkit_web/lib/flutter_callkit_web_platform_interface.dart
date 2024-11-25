import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_callkit_web_method_channel.dart';

abstract class FlutterCallkitWebPlatform extends PlatformInterface {
  /// Constructs a FlutterCallkitWebPlatform.
  FlutterCallkitWebPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCallkitWebPlatform _instance = MethodChannelFlutterCallkitWeb();

  /// The default instance of [FlutterCallkitWebPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCallkitWeb].
  static FlutterCallkitWebPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCallkitWebPlatform] when
  /// they register themselves.
  static set instance(FlutterCallkitWebPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

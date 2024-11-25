
import 'flutter_callkit_web_platform_interface.dart';

class FlutterCallkitWeb {
  Future<String?> getPlatformVersion() {
    return FlutterCallkitWebPlatform.instance.getPlatformVersion();
  }
}

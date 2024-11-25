
import 'flutter_callkit_platform_interface.dart';

class FlutterCallkit {
  Future<String?> getPlatformVersion() {
    return FlutterCallkitPlatform.instance.getPlatformVersion();
  }
}

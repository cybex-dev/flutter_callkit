import 'enums/enums.dart';

class CKCallResult {
  final String uuid;
  final CallKitAction action;
  final Map<String, dynamic> data;

  const CKCallResult({required this.uuid, required this.action, required this.data});

  // factory CKCallResult.fromResult(NotificationActionResult result) {
  //   final action = result.action != null ? CallKitAction.fromString(result.action!) : CallKitAction.none;
  //   final tag = result.tag ?? "";
  //   final data = result.data ?? {};
  //   return CKCallResult(uuid: tag, action: action, data: data);
  // }

  @override
  String toString() {
    return 'CKCallResult{uuid: $uuid, action: $action, data: $data}';
  }
}
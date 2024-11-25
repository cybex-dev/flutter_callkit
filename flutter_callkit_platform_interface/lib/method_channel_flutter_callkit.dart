import 'package:flutter/services.dart';

import 'flutter_callkit_platform_interface.dart';

final MethodChannel _channel = MethodChannel('plugins.flutter.io/$kMethodChannelName');
final EventChannel _eventCalls = EventChannel('plugins.flutter.io/$kEventChannelName/calls');
final EventChannel _eventCallEvents = EventChannel('plugins.flutter.io/$kEventChannelName/events');

class MethodChannelFlutterCallKit extends FlutterCallkitPlatform {
  @override
  Stream<Iterable<CKCall>> get callStream =>
      _eventCalls.receiveBroadcastStream().map((event) => event as Iterable<CKCall>);

  @override
  Stream<CallEvent> get eventStream => _eventCallEvents.receiveBroadcastStream().map((event) => event as CallEvent);

  @override
  Future<CKCall?> getCall(String uuid) {
    return _channel.invokeMethod<void>('getCall', {
      'uuid': uuid,
    }).then((result) => result as CKCall?);
  }

  @override
  Future<Iterable<CKCall>> getCalls() {
    // TODO: implement getCalls
    throw UnimplementedError();
  }

  @override
  Future<void> onCallAction(CKCallResult result) {
    // TODO: implement onCallAction
    throw UnimplementedError();
  }

  @override
  Future<void> onStateChange(CKCall call) {
    // TODO: implement onStateChange
    throw UnimplementedError();
  }

  @override
  Future<void> reportCallDisconnected(String uuid, {required DisconnectResponse response}) {
    // TODO: implement reportCallDisconnected
    throw UnimplementedError();
  }

  @override
  Future<CKCall> reportNewCall({required String uuid, required String handle, Set<CallKitCapability>? capabilities, Set<
      CallAttributes>? attributes, Map<String, dynamic>? data}) {
    // TODO: implement reportNewCall
    throw UnimplementedError();
  }

  @override
  Future<CKCall?> updateCallAttributes(String uuid,
      {required Set<CallAttributes> attributes, Map<String, dynamic>? data}) {
    // TODO: implement updateCallAttributes
    throw UnimplementedError();
  }

  @override
  Future<CKCall?> updateCallCapabilities(String uuid, {required Set<CallKitCapability> capabilities}) {
    // TODO: implement updateCallCapabilities
    throw UnimplementedError();
  }

  @override
  Future<CKCall?> updateCallData(String uuid, {required Map<String, dynamic> data}) {
    // TODO: implement updateCallData
    throw UnimplementedError();
  }

  @override
  Future<CKCall?> updateCallStatus(String uuid, {required CallState callStatus}) {
    // TODO: implement updateCallStatus
    throw UnimplementedError();
  }

  @override
  Future<CKCall?> updateCallType(String uuid, {required CallType callType}) {
    // TODO: implement updateCallType
    throw UnimplementedError();
  }

  @override
  set configuration(CKConfiguration value) {
    // TODO: implement configuration
  }

}
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.78.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

abstract class IntifaceEngineFlutterBridge {
  Stream<String> runEngine({required EngineOptionsExternal args, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRunEngineConstMeta;

  Future<void> send({required String msgJson, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSendConstMeta;

  Future<void> stopEngine({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kStopEngineConstMeta;

  Future<void> sendBackendServerMessage({required String msg, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSendBackendServerMessageConstMeta;

  Future<ExposedUserConfig> getUserDeviceConfigs(
      {required String deviceConfigJson,
      required String userConfigJson,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetUserDeviceConfigsConstMeta;

  Future<String> generateUserDeviceConfigFile(
      {required ExposedUserConfig userConfig, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGenerateUserDeviceConfigFileConstMeta;

  Future<List<String>> getProtocolNames({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetProtocolNamesConstMeta;
}

class EngineOptionsExternal {
  final String? sentryApiKey;
  final String? deviceConfigJson;
  final String? userDeviceConfigJson;
  final String serverName;
  final bool crashReporting;
  final bool websocketUseAllInterfaces;
  final int? websocketPort;
  final int? frontendWebsocketPort;
  final bool frontendInProcessChannel;
  final int maxPingTime;
  final String? logLevel;
  final bool allowRawMessages;
  final bool useBluetoothLe;
  final bool useSerialPort;
  final bool useHid;
  final bool useLovenseDongleSerial;
  final bool useLovenseDongleHid;
  final bool useXinput;
  final bool useLovenseConnect;
  final bool useDeviceWebsocketServer;
  final int? deviceWebsocketServerPort;
  final bool crashMainThread;
  final bool crashTaskThread;
  final String? websocketClientAddress;

  const EngineOptionsExternal({
    this.sentryApiKey,
    this.deviceConfigJson,
    this.userDeviceConfigJson,
    required this.serverName,
    required this.crashReporting,
    required this.websocketUseAllInterfaces,
    this.websocketPort,
    this.frontendWebsocketPort,
    required this.frontendInProcessChannel,
    required this.maxPingTime,
    this.logLevel,
    required this.allowRawMessages,
    required this.useBluetoothLe,
    required this.useSerialPort,
    required this.useHid,
    required this.useLovenseDongleSerial,
    required this.useLovenseDongleHid,
    required this.useXinput,
    required this.useLovenseConnect,
    required this.useDeviceWebsocketServer,
    this.deviceWebsocketServerPort,
    required this.crashMainThread,
    required this.crashTaskThread,
    this.websocketClientAddress,
  });
}

class ExposedUserConfig {
  final List<(String, ExposedUserDeviceSpecifiers)> specifiers;
  final List<ExposedUserDeviceConfig> configurations;

  const ExposedUserConfig({
    required this.specifiers,
    required this.configurations,
  });
}

class ExposedUserDeviceConfig {
  final UserConfigDeviceIdentifier identifier;
  final String name;
  final String? displayName;
  final bool? allow;
  final bool? deny;
  final int? reservedIndex;

  const ExposedUserDeviceConfig({
    required this.identifier,
    required this.name,
    this.displayName,
    this.allow,
    this.deny,
    this.reservedIndex,
  });
}

class ExposedUserDeviceSpecifiers {
  final ExposedWebsocketSpecifier? websocket;

  const ExposedUserDeviceSpecifiers({
    this.websocket,
  });
}

class ExposedWebsocketSpecifier {
  final List<String> names;

  const ExposedWebsocketSpecifier({
    required this.names,
  });
}

class UserConfigDeviceIdentifier {
  final String address;
  final String protocol;
  final String? identifier;

  const UserConfigDeviceIdentifier({
    required this.address,
    required this.protocol,
    this.identifier,
  });
}

class IntifaceEngineFlutterBridgeImpl implements IntifaceEngineFlutterBridge {
  final IntifaceEngineFlutterBridgePlatform _platform;
  factory IntifaceEngineFlutterBridgeImpl(ExternalLibrary dylib) =>
      IntifaceEngineFlutterBridgeImpl.raw(
          IntifaceEngineFlutterBridgePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory IntifaceEngineFlutterBridgeImpl.wasm(FutureOr<WasmModule> module) =>
      IntifaceEngineFlutterBridgeImpl(module as ExternalLibrary);
  IntifaceEngineFlutterBridgeImpl.raw(this._platform);
  Stream<String> runEngine(
      {required EngineOptionsExternal args, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_engine_options_external(args);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_run_engine(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kRunEngineConstMeta,
      argValues: [args],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRunEngineConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "run_engine",
        argNames: ["args"],
      );

  Future<void> send({required String msgJson, dynamic hint}) {
    var arg0 = _platform.api2wire_String(msgJson);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_send(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kSendConstMeta,
      argValues: [msgJson],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSendConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "send",
        argNames: ["msgJson"],
      );

  Future<void> stopEngine({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_stop_engine(port_),
      parseSuccessData: _wire2api_unit,
      constMeta: kStopEngineConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kStopEngineConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "stop_engine",
        argNames: [],
      );

  Future<void> sendBackendServerMessage({required String msg, dynamic hint}) {
    var arg0 = _platform.api2wire_String(msg);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_send_backend_server_message(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kSendBackendServerMessageConstMeta,
      argValues: [msg],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSendBackendServerMessageConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "send_backend_server_message",
        argNames: ["msg"],
      );

  Future<ExposedUserConfig> getUserDeviceConfigs(
      {required String deviceConfigJson,
      required String userConfigJson,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(deviceConfigJson);
    var arg1 = _platform.api2wire_String(userConfigJson);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_user_device_configs(port_, arg0, arg1),
      parseSuccessData: _wire2api_exposed_user_config,
      constMeta: kGetUserDeviceConfigsConstMeta,
      argValues: [deviceConfigJson, userConfigJson],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetUserDeviceConfigsConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_user_device_configs",
        argNames: ["deviceConfigJson", "userConfigJson"],
      );

  Future<String> generateUserDeviceConfigFile(
      {required ExposedUserConfig userConfig, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_exposed_user_config(userConfig);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_generate_user_device_config_file(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kGenerateUserDeviceConfigFileConstMeta,
      argValues: [userConfig],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGenerateUserDeviceConfigFileConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "generate_user_device_config_file",
        argNames: ["userConfig"],
      );

  Future<List<String>> getProtocolNames({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_get_protocol_names(port_),
      parseSuccessData: _wire2api_StringList,
      constMeta: kGetProtocolNamesConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetProtocolNamesConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_protocol_names",
        argNames: [],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  List<String> _wire2api_StringList(dynamic raw) {
    return (raw as List<dynamic>).cast<String>();
  }

  (String, ExposedUserDeviceSpecifiers)
      _wire2api___record__String_exposed_user_device_specifiers(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2) {
      throw Exception('Expected 2 elements, got ${arr.length}');
    }
    return (
      _wire2api_String(arr[0]),
      _wire2api_exposed_user_device_specifiers(arr[1]),
    );
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  bool _wire2api_box_autoadd_bool(dynamic raw) {
    return raw as bool;
  }

  ExposedWebsocketSpecifier _wire2api_box_autoadd_exposed_websocket_specifier(
      dynamic raw) {
    return _wire2api_exposed_websocket_specifier(raw);
  }

  int _wire2api_box_autoadd_u32(dynamic raw) {
    return raw as int;
  }

  ExposedUserConfig _wire2api_exposed_user_config(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return ExposedUserConfig(
      specifiers:
          _wire2api_list___record__String_exposed_user_device_specifiers(
              arr[0]),
      configurations: _wire2api_list_exposed_user_device_config(arr[1]),
    );
  }

  ExposedUserDeviceConfig _wire2api_exposed_user_device_config(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 6)
      throw Exception('unexpected arr length: expect 6 but see ${arr.length}');
    return ExposedUserDeviceConfig(
      identifier: _wire2api_user_config_device_identifier(arr[0]),
      name: _wire2api_String(arr[1]),
      displayName: _wire2api_opt_String(arr[2]),
      allow: _wire2api_opt_box_autoadd_bool(arr[3]),
      deny: _wire2api_opt_box_autoadd_bool(arr[4]),
      reservedIndex: _wire2api_opt_box_autoadd_u32(arr[5]),
    );
  }

  ExposedUserDeviceSpecifiers _wire2api_exposed_user_device_specifiers(
      dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return ExposedUserDeviceSpecifiers(
      websocket: _wire2api_opt_box_autoadd_exposed_websocket_specifier(arr[0]),
    );
  }

  ExposedWebsocketSpecifier _wire2api_exposed_websocket_specifier(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return ExposedWebsocketSpecifier(
      names: _wire2api_StringList(arr[0]),
    );
  }

  List<(String, ExposedUserDeviceSpecifiers)>
      _wire2api_list___record__String_exposed_user_device_specifiers(
          dynamic raw) {
    return (raw as List<dynamic>)
        .map(_wire2api___record__String_exposed_user_device_specifiers)
        .toList();
  }

  List<ExposedUserDeviceConfig> _wire2api_list_exposed_user_device_config(
      dynamic raw) {
    return (raw as List<dynamic>)
        .map(_wire2api_exposed_user_device_config)
        .toList();
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _wire2api_String(raw);
  }

  bool? _wire2api_opt_box_autoadd_bool(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_bool(raw);
  }

  ExposedWebsocketSpecifier?
      _wire2api_opt_box_autoadd_exposed_websocket_specifier(dynamic raw) {
    return raw == null
        ? null
        : _wire2api_box_autoadd_exposed_websocket_specifier(raw);
  }

  int? _wire2api_opt_box_autoadd_u32(dynamic raw) {
    return raw == null ? null : _wire2api_box_autoadd_u32(raw);
  }

  int _wire2api_u32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }

  UserConfigDeviceIdentifier _wire2api_user_config_device_identifier(
      dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return UserConfigDeviceIdentifier(
      address: _wire2api_String(arr[0]),
      protocol: _wire2api_String(arr[1]),
      identifier: _wire2api_opt_String(arr[2]),
    );
  }
}

// Section: api2wire

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_u16(int raw) {
  return raw;
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class IntifaceEngineFlutterBridgePlatform
    extends FlutterRustBridgeBase<IntifaceEngineFlutterBridgeWire> {
  IntifaceEngineFlutterBridgePlatform(ffi.DynamicLibrary dylib)
      : super(IntifaceEngineFlutterBridgeWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_StringList> api2wire_StringList(List<String> raw) {
    final ans = inner.new_StringList_0(raw.length);
    for (var i = 0; i < raw.length; i++) {
      ans.ref.ptr[i] = api2wire_String(raw[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<ffi.Bool> api2wire_box_autoadd_bool(bool raw) {
    return inner.new_box_autoadd_bool_0(api2wire_bool(raw));
  }

  @protected
  ffi.Pointer<wire_EngineOptionsExternal>
      api2wire_box_autoadd_engine_options_external(EngineOptionsExternal raw) {
    final ptr = inner.new_box_autoadd_engine_options_external_0();
    _api_fill_to_wire_engine_options_external(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_ExposedUserConfig> api2wire_box_autoadd_exposed_user_config(
      ExposedUserConfig raw) {
    final ptr = inner.new_box_autoadd_exposed_user_config_0();
    _api_fill_to_wire_exposed_user_config(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_ExposedWebsocketSpecifier>
      api2wire_box_autoadd_exposed_websocket_specifier(
          ExposedWebsocketSpecifier raw) {
    final ptr = inner.new_box_autoadd_exposed_websocket_specifier_0();
    _api_fill_to_wire_exposed_websocket_specifier(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<ffi.Uint16> api2wire_box_autoadd_u16(int raw) {
    return inner.new_box_autoadd_u16_0(api2wire_u16(raw));
  }

  @protected
  ffi.Pointer<ffi.Uint32> api2wire_box_autoadd_u32(int raw) {
    return inner.new_box_autoadd_u32_0(api2wire_u32(raw));
  }

  @protected
  ffi.Pointer<wire_list___record__String_exposed_user_device_specifiers>
      api2wire_list___record__String_exposed_user_device_specifiers(
          List<(String, ExposedUserDeviceSpecifiers)> raw) {
    final ans = inner
        .new_list___record__String_exposed_user_device_specifiers_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire___record__String_exposed_user_device_specifiers(
          raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_list_exposed_user_device_config>
      api2wire_list_exposed_user_device_config(
          List<ExposedUserDeviceConfig> raw) {
    final ans = inner.new_list_exposed_user_device_config_0(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_exposed_user_device_config(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<ffi.Bool> api2wire_opt_box_autoadd_bool(bool? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_bool(raw);
  }

  @protected
  ffi.Pointer<wire_ExposedWebsocketSpecifier>
      api2wire_opt_box_autoadd_exposed_websocket_specifier(
          ExposedWebsocketSpecifier? raw) {
    return raw == null
        ? ffi.nullptr
        : api2wire_box_autoadd_exposed_websocket_specifier(raw);
  }

  @protected
  ffi.Pointer<ffi.Uint16> api2wire_opt_box_autoadd_u16(int? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_u16(raw);
  }

  @protected
  ffi.Pointer<ffi.Uint32> api2wire_opt_box_autoadd_u32(int? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_u32(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire___record__String_exposed_user_device_specifiers(
      (String, ExposedUserDeviceSpecifiers) apiObj,
      wire___record__String_exposed_user_device_specifiers wireObj) {
    wireObj.field0 = api2wire_String(apiObj.$1);
    _api_fill_to_wire_exposed_user_device_specifiers(apiObj.$2, wireObj.field1);
  }

  void _api_fill_to_wire_box_autoadd_engine_options_external(
      EngineOptionsExternal apiObj,
      ffi.Pointer<wire_EngineOptionsExternal> wireObj) {
    _api_fill_to_wire_engine_options_external(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_exposed_user_config(
      ExposedUserConfig apiObj, ffi.Pointer<wire_ExposedUserConfig> wireObj) {
    _api_fill_to_wire_exposed_user_config(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_exposed_websocket_specifier(
      ExposedWebsocketSpecifier apiObj,
      ffi.Pointer<wire_ExposedWebsocketSpecifier> wireObj) {
    _api_fill_to_wire_exposed_websocket_specifier(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_engine_options_external(
      EngineOptionsExternal apiObj, wire_EngineOptionsExternal wireObj) {
    wireObj.sentry_api_key = api2wire_opt_String(apiObj.sentryApiKey);
    wireObj.device_config_json = api2wire_opt_String(apiObj.deviceConfigJson);
    wireObj.user_device_config_json =
        api2wire_opt_String(apiObj.userDeviceConfigJson);
    wireObj.server_name = api2wire_String(apiObj.serverName);
    wireObj.crash_reporting = api2wire_bool(apiObj.crashReporting);
    wireObj.websocket_use_all_interfaces =
        api2wire_bool(apiObj.websocketUseAllInterfaces);
    wireObj.websocket_port = api2wire_opt_box_autoadd_u16(apiObj.websocketPort);
    wireObj.frontend_websocket_port =
        api2wire_opt_box_autoadd_u16(apiObj.frontendWebsocketPort);
    wireObj.frontend_in_process_channel =
        api2wire_bool(apiObj.frontendInProcessChannel);
    wireObj.max_ping_time = api2wire_u32(apiObj.maxPingTime);
    wireObj.log_level = api2wire_opt_String(apiObj.logLevel);
    wireObj.allow_raw_messages = api2wire_bool(apiObj.allowRawMessages);
    wireObj.use_bluetooth_le = api2wire_bool(apiObj.useBluetoothLe);
    wireObj.use_serial_port = api2wire_bool(apiObj.useSerialPort);
    wireObj.use_hid = api2wire_bool(apiObj.useHid);
    wireObj.use_lovense_dongle_serial =
        api2wire_bool(apiObj.useLovenseDongleSerial);
    wireObj.use_lovense_dongle_hid = api2wire_bool(apiObj.useLovenseDongleHid);
    wireObj.use_xinput = api2wire_bool(apiObj.useXinput);
    wireObj.use_lovense_connect = api2wire_bool(apiObj.useLovenseConnect);
    wireObj.use_device_websocket_server =
        api2wire_bool(apiObj.useDeviceWebsocketServer);
    wireObj.device_websocket_server_port =
        api2wire_opt_box_autoadd_u16(apiObj.deviceWebsocketServerPort);
    wireObj.crash_main_thread = api2wire_bool(apiObj.crashMainThread);
    wireObj.crash_task_thread = api2wire_bool(apiObj.crashTaskThread);
    wireObj.websocket_client_address =
        api2wire_opt_String(apiObj.websocketClientAddress);
  }

  void _api_fill_to_wire_exposed_user_config(
      ExposedUserConfig apiObj, wire_ExposedUserConfig wireObj) {
    wireObj.specifiers =
        api2wire_list___record__String_exposed_user_device_specifiers(
            apiObj.specifiers);
    wireObj.configurations =
        api2wire_list_exposed_user_device_config(apiObj.configurations);
  }

  void _api_fill_to_wire_exposed_user_device_config(
      ExposedUserDeviceConfig apiObj, wire_ExposedUserDeviceConfig wireObj) {
    _api_fill_to_wire_user_config_device_identifier(
        apiObj.identifier, wireObj.identifier);
    wireObj.name = api2wire_String(apiObj.name);
    wireObj.display_name = api2wire_opt_String(apiObj.displayName);
    wireObj.allow = api2wire_opt_box_autoadd_bool(apiObj.allow);
    wireObj.deny = api2wire_opt_box_autoadd_bool(apiObj.deny);
    wireObj.reserved_index = api2wire_opt_box_autoadd_u32(apiObj.reservedIndex);
  }

  void _api_fill_to_wire_exposed_user_device_specifiers(
      ExposedUserDeviceSpecifiers apiObj,
      wire_ExposedUserDeviceSpecifiers wireObj) {
    wireObj.websocket =
        api2wire_opt_box_autoadd_exposed_websocket_specifier(apiObj.websocket);
  }

  void _api_fill_to_wire_exposed_websocket_specifier(
      ExposedWebsocketSpecifier apiObj,
      wire_ExposedWebsocketSpecifier wireObj) {
    wireObj.names = api2wire_StringList(apiObj.names);
  }

  void _api_fill_to_wire_opt_box_autoadd_exposed_websocket_specifier(
      ExposedWebsocketSpecifier? apiObj,
      ffi.Pointer<wire_ExposedWebsocketSpecifier> wireObj) {
    if (apiObj != null)
      _api_fill_to_wire_box_autoadd_exposed_websocket_specifier(
          apiObj, wireObj);
  }

  void _api_fill_to_wire_user_config_device_identifier(
      UserConfigDeviceIdentifier apiObj,
      wire_UserConfigDeviceIdentifier wireObj) {
    wireObj.address = api2wire_String(apiObj.address);
    wireObj.protocol = api2wire_String(apiObj.protocol);
    wireObj.identifier = api2wire_opt_String(apiObj.identifier);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class IntifaceEngineFlutterBridgeWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  IntifaceEngineFlutterBridgeWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  IntifaceEngineFlutterBridgeWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_run_engine(
    int port_,
    ffi.Pointer<wire_EngineOptionsExternal> args,
  ) {
    return _wire_run_engine(
      port_,
      args,
    );
  }

  late final _wire_run_enginePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_EngineOptionsExternal>)>>('wire_run_engine');
  late final _wire_run_engine = _wire_run_enginePtr.asFunction<
      void Function(int, ffi.Pointer<wire_EngineOptionsExternal>)>();

  void wire_send(
    int port_,
    ffi.Pointer<wire_uint_8_list> msg_json,
  ) {
    return _wire_send(
      port_,
      msg_json,
    );
  }

  late final _wire_sendPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_send');
  late final _wire_send = _wire_sendPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_stop_engine(
    int port_,
  ) {
    return _wire_stop_engine(
      port_,
    );
  }

  late final _wire_stop_enginePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_stop_engine');
  late final _wire_stop_engine =
      _wire_stop_enginePtr.asFunction<void Function(int)>();

  void wire_send_backend_server_message(
    int port_,
    ffi.Pointer<wire_uint_8_list> msg,
  ) {
    return _wire_send_backend_server_message(
      port_,
      msg,
    );
  }

  late final _wire_send_backend_server_messagePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_send_backend_server_message');
  late final _wire_send_backend_server_message =
      _wire_send_backend_server_messagePtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_user_device_configs(
    int port_,
    ffi.Pointer<wire_uint_8_list> device_config_json,
    ffi.Pointer<wire_uint_8_list> user_config_json,
  ) {
    return _wire_get_user_device_configs(
      port_,
      device_config_json,
      user_config_json,
    );
  }

  late final _wire_get_user_device_configsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_user_device_configs');
  late final _wire_get_user_device_configs =
      _wire_get_user_device_configsPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_generate_user_device_config_file(
    int port_,
    ffi.Pointer<wire_ExposedUserConfig> user_config,
  ) {
    return _wire_generate_user_device_config_file(
      port_,
      user_config,
    );
  }

  late final _wire_generate_user_device_config_filePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64, ffi.Pointer<wire_ExposedUserConfig>)>>(
      'wire_generate_user_device_config_file');
  late final _wire_generate_user_device_config_file =
      _wire_generate_user_device_config_filePtr.asFunction<
          void Function(int, ffi.Pointer<wire_ExposedUserConfig>)>();

  void wire_get_protocol_names(
    int port_,
  ) {
    return _wire_get_protocol_names(
      port_,
    );
  }

  late final _wire_get_protocol_namesPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_get_protocol_names');
  late final _wire_get_protocol_names =
      _wire_get_protocol_namesPtr.asFunction<void Function(int)>();

  ffi.Pointer<wire_StringList> new_StringList_0(
    int len,
  ) {
    return _new_StringList_0(
      len,
    );
  }

  late final _new_StringList_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_StringList> Function(ffi.Int32)>>(
      'new_StringList_0');
  late final _new_StringList_0 = _new_StringList_0Ptr
      .asFunction<ffi.Pointer<wire_StringList> Function(int)>();

  ffi.Pointer<ffi.Bool> new_box_autoadd_bool_0(
    bool value,
  ) {
    return _new_box_autoadd_bool_0(
      value,
    );
  }

  late final _new_box_autoadd_bool_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Bool> Function(ffi.Bool)>>(
          'new_box_autoadd_bool_0');
  late final _new_box_autoadd_bool_0 = _new_box_autoadd_bool_0Ptr
      .asFunction<ffi.Pointer<ffi.Bool> Function(bool)>();

  ffi.Pointer<wire_EngineOptionsExternal>
      new_box_autoadd_engine_options_external_0() {
    return _new_box_autoadd_engine_options_external_0();
  }

  late final _new_box_autoadd_engine_options_external_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_EngineOptionsExternal>
              Function()>>('new_box_autoadd_engine_options_external_0');
  late final _new_box_autoadd_engine_options_external_0 =
      _new_box_autoadd_engine_options_external_0Ptr
          .asFunction<ffi.Pointer<wire_EngineOptionsExternal> Function()>();

  ffi.Pointer<wire_ExposedUserConfig> new_box_autoadd_exposed_user_config_0() {
    return _new_box_autoadd_exposed_user_config_0();
  }

  late final _new_box_autoadd_exposed_user_config_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_ExposedUserConfig> Function()>>(
      'new_box_autoadd_exposed_user_config_0');
  late final _new_box_autoadd_exposed_user_config_0 =
      _new_box_autoadd_exposed_user_config_0Ptr
          .asFunction<ffi.Pointer<wire_ExposedUserConfig> Function()>();

  ffi.Pointer<wire_ExposedWebsocketSpecifier>
      new_box_autoadd_exposed_websocket_specifier_0() {
    return _new_box_autoadd_exposed_websocket_specifier_0();
  }

  late final _new_box_autoadd_exposed_websocket_specifier_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_ExposedWebsocketSpecifier>
              Function()>>('new_box_autoadd_exposed_websocket_specifier_0');
  late final _new_box_autoadd_exposed_websocket_specifier_0 =
      _new_box_autoadd_exposed_websocket_specifier_0Ptr
          .asFunction<ffi.Pointer<wire_ExposedWebsocketSpecifier> Function()>();

  ffi.Pointer<ffi.Uint16> new_box_autoadd_u16_0(
    int value,
  ) {
    return _new_box_autoadd_u16_0(
      value,
    );
  }

  late final _new_box_autoadd_u16_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Uint16> Function(ffi.Uint16)>>(
          'new_box_autoadd_u16_0');
  late final _new_box_autoadd_u16_0 = _new_box_autoadd_u16_0Ptr
      .asFunction<ffi.Pointer<ffi.Uint16> Function(int)>();

  ffi.Pointer<ffi.Uint32> new_box_autoadd_u32_0(
    int value,
  ) {
    return _new_box_autoadd_u32_0(
      value,
    );
  }

  late final _new_box_autoadd_u32_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Uint32> Function(ffi.Uint32)>>(
          'new_box_autoadd_u32_0');
  late final _new_box_autoadd_u32_0 = _new_box_autoadd_u32_0Ptr
      .asFunction<ffi.Pointer<ffi.Uint32> Function(int)>();

  ffi.Pointer<wire_list___record__String_exposed_user_device_specifiers>
      new_list___record__String_exposed_user_device_specifiers_0(
    int len,
  ) {
    return _new_list___record__String_exposed_user_device_specifiers_0(
      len,
    );
  }

  late final _new_list___record__String_exposed_user_device_specifiers_0Ptr =
      _lookup<
              ffi.NativeFunction<
                  ffi.Pointer<
                          wire_list___record__String_exposed_user_device_specifiers>
                      Function(ffi.Int32)>>(
          'new_list___record__String_exposed_user_device_specifiers_0');
  late final _new_list___record__String_exposed_user_device_specifiers_0 =
      _new_list___record__String_exposed_user_device_specifiers_0Ptr.asFunction<
          ffi.Pointer<wire_list___record__String_exposed_user_device_specifiers>
              Function(int)>();

  ffi.Pointer<wire_list_exposed_user_device_config>
      new_list_exposed_user_device_config_0(
    int len,
  ) {
    return _new_list_exposed_user_device_config_0(
      len,
    );
  }

  late final _new_list_exposed_user_device_config_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_exposed_user_device_config> Function(
              ffi.Int32)>>('new_list_exposed_user_device_config_0');
  late final _new_list_exposed_user_device_config_0 =
      _new_list_exposed_user_device_config_0Ptr.asFunction<
          ffi.Pointer<wire_list_exposed_user_device_config> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();

  int JNI_OnLoad(
    int vm,
    ffi.Pointer<ffi.Void> _res,
  ) {
    return _JNI_OnLoad(
      vm,
      _res,
    );
  }

  late final _JNI_OnLoadPtr = _lookup<
          ffi.NativeFunction<ffi.Int Function(ffi.Int, ffi.Pointer<ffi.Void>)>>(
      'JNI_OnLoad');
  late final _JNI_OnLoad =
      _JNI_OnLoadPtr.asFunction<int Function(int, ffi.Pointer<ffi.Void>)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_EngineOptionsExternal extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> sentry_api_key;

  external ffi.Pointer<wire_uint_8_list> device_config_json;

  external ffi.Pointer<wire_uint_8_list> user_device_config_json;

  external ffi.Pointer<wire_uint_8_list> server_name;

  @ffi.Bool()
  external bool crash_reporting;

  @ffi.Bool()
  external bool websocket_use_all_interfaces;

  external ffi.Pointer<ffi.Uint16> websocket_port;

  external ffi.Pointer<ffi.Uint16> frontend_websocket_port;

  @ffi.Bool()
  external bool frontend_in_process_channel;

  @ffi.Uint32()
  external int max_ping_time;

  external ffi.Pointer<wire_uint_8_list> log_level;

  @ffi.Bool()
  external bool allow_raw_messages;

  @ffi.Bool()
  external bool use_bluetooth_le;

  @ffi.Bool()
  external bool use_serial_port;

  @ffi.Bool()
  external bool use_hid;

  @ffi.Bool()
  external bool use_lovense_dongle_serial;

  @ffi.Bool()
  external bool use_lovense_dongle_hid;

  @ffi.Bool()
  external bool use_xinput;

  @ffi.Bool()
  external bool use_lovense_connect;

  @ffi.Bool()
  external bool use_device_websocket_server;

  external ffi.Pointer<ffi.Uint16> device_websocket_server_port;

  @ffi.Bool()
  external bool crash_main_thread;

  @ffi.Bool()
  external bool crash_task_thread;

  external ffi.Pointer<wire_uint_8_list> websocket_client_address;
}

final class wire_StringList extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_uint_8_list>> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_ExposedWebsocketSpecifier extends ffi.Struct {
  external ffi.Pointer<wire_StringList> names;
}

final class wire_ExposedUserDeviceSpecifiers extends ffi.Struct {
  external ffi.Pointer<wire_ExposedWebsocketSpecifier> websocket;
}

final class wire___record__String_exposed_user_device_specifiers
    extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;

  external wire_ExposedUserDeviceSpecifiers field1;
}

final class wire_list___record__String_exposed_user_device_specifiers
    extends ffi.Struct {
  external ffi.Pointer<wire___record__String_exposed_user_device_specifiers>
      ptr;

  @ffi.Int32()
  external int len;
}

final class wire_UserConfigDeviceIdentifier extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> address;

  external ffi.Pointer<wire_uint_8_list> protocol;

  external ffi.Pointer<wire_uint_8_list> identifier;
}

final class wire_ExposedUserDeviceConfig extends ffi.Struct {
  external wire_UserConfigDeviceIdentifier identifier;

  external ffi.Pointer<wire_uint_8_list> name;

  external ffi.Pointer<wire_uint_8_list> display_name;

  external ffi.Pointer<ffi.Bool> allow;

  external ffi.Pointer<ffi.Bool> deny;

  external ffi.Pointer<ffi.Uint32> reserved_index;
}

final class wire_list_exposed_user_device_config extends ffi.Struct {
  external ffi.Pointer<wire_ExposedUserDeviceConfig> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_ExposedUserConfig extends ffi.Struct {
  external ffi
          .Pointer<wire_list___record__String_exposed_user_device_specifiers>
      specifiers;

  external ffi.Pointer<wire_list_exposed_user_device_config> configurations;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;

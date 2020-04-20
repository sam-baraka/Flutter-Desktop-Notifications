import 'dart:async';

import 'package:flutter/services.dart';

class FlutterDesktopNotifications {
  static const MethodChannel _channel =
      const MethodChannel('flutter_desktop_notifications');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

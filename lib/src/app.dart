import 'dart:async';

import 'navigation.dart';

Map<String, App> _apps = {};

String _defaultAppName = "[DEFAULT]";

class App {
  const App({
    this.name,
    this.navigationUrl,
    this.projectId,
    this.appId,
    this.appVersion,
  });

  final String name;

  final String navigationUrl;

  final String projectId;

  final String appId;

  final String appVersion;
}

/// Initialize an app with given options
Future<App> initializeApp({
  String name,
  String navigationUrl,
  String projectId,
  String appId,
  String appVersion,
}) async {
  if (name == null) {
    name = _defaultAppName;
  }
  if (!_apps.containsKey(name)) {
    if (_apps.length <= 0) {
      _defaultAppName = name;
    }
    _apps[name] = App(
      name: name,
      navigationUrl: navigationUrl,
      projectId: projectId,
      appId: appId,
      appVersion: appVersion,
    );
  }
  return _apps[name];
}

/// Return a App instance with the given name initialized.
App getAppNamed(String name) {
  return _apps[name];
}

/// Return a App instance which the first initialized.
App getDefaultApp() {
  return getAppNamed(_defaultAppName);
}

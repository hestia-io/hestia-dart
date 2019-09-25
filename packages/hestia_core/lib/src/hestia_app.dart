part of hestia_core;

class HestiaApp {
  const HestiaApp({
    this.name,
    this.navigationUrl,
    this.projectId,
    this.appId,
    this.appVersion,
  });

  static Map<String, HestiaApp> _apps = {};

  static String _defaultAppName = "[DEFAULT]";

  final String name;

  final String navigationUrl;

  final String projectId;

  final String appId;

  final String appVersion;

  /// Configure an app with given options
  static HestiaApp configure({
    String name,
    String navigationUrl,
    String projectId,
    String appId,
    String appVersion,
  }) {
    if (name == null) {
      name = _defaultAppName;
    }
    if (!_apps.containsKey(name)) {
      if (_apps.length <= 0) {
        _defaultAppName = name;
      }
      _apps[name] = HestiaApp(
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
  static HestiaApp appNamed(String name) {
    return _apps[name];
  }

  /// Return a App instance which the first initialized.
  static HestiaApp get defaultApp {
    return appNamed(_defaultAppName);
  }
}

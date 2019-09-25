import 'dart:async';

import 'app.dart';
import 'navigation.pb.dart';

// ignore: uri_does_not_exist
import 'client_stub.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) 'web_client.dart'
    // ignore: uri_does_not_exist
    if (dart.library.io) 'io_client.dart' as client;

class Navigation {
  Navigation({String appName, App app}) {
    if (app == null) {
      if (appName == null) {
        app = getDefaultApp();
      } else {
        app = getAppNamed(appName);
      }
    }

    assert(app.navigationURL != null);
    assert(app.appId != null);
    assert(app.projectId != null);

    _app = app;
  }

  App _app;

  /// Request given endpoint
  Future<NavigationResponse> requestNavigation(
      {NavigationEndpoint navigationEndpoint, String continuation = ''}) {
    NavigationRequest request = NavigationRequest()
      ..navigationEndpoint = navigationEndpoint
      ..context = (NavigationRequestContext()
        ..client = (NavigationRequestContextClient()
          ..appId = _app.appId
          ..appVersion = _app.appVersion))
      ..continuation = continuation;

    return client.requestNavigation(
        uri: Uri.parse(_app.navigationURL), request: request);
  }
}

part of hestia_navigation;

class HestiaNavigation {
  HestiaNavigation({String appName, HestiaApp app}) {
    if (app == null) {
      if (appName == null) {
        app = HestiaApp.defaultApp;
      } else {
        app = HestiaApp.appNamed(appName);
      }
    }

    assert(app.navigationUrl != null);
    assert(app.appId != null);
    assert(app.projectId != null);

    _app = app;
  }

  HestiaApp _app;

  /// Request given endpoint
  Future<NavigationResponse> requestNavigation(
      {NavigationEndpoint navigationEndpoint, String continuation}) {
    NavigationRequest request = NavigationRequest()
      ..navigationEndpoint = navigationEndpoint
      ..context = (NavigationRequestContext()
        ..client = (NavigationRequestContextClient()
          ..appId = _app.appId
          ..appVersion = _app.appVersion));

    if (continuation != null) {
      request.continuation = continuation;
    }

    return client.requestNavigation(
        uri: Uri.parse(_app.navigationUrl), request: request);
  }
}

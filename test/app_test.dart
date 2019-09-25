import 'package:test/test.dart';

import 'package:hestia/hestia.dart';

void main() {
  group('Apps', () {
    test('initializeApp', () async {
      const testAppName = 'testApp';
      const testNavigationURL = 'https://testapp:8080';
      const testProjectId = 'testProjectId';
      const testAppId = 'testAppId';
      const testAppVersion = '1.0.1';

      await initializeApp(
        name: testAppName,
        navigationURL: testNavigationURL,
        projectId: testProjectId,
        appId: testAppId,
        appVersion: testAppVersion,
      );

      App app = getAppNamed(testAppName);

      expect(app.name, equals(testAppName));
      expect(app.navigationURL, equals(testNavigationURL));
      expect(app.projectId, equals(testProjectId));
      expect(app.appId, equals(testAppId));
      expect(app.appVersion, equals(testAppVersion));

      expect(app, equals(getDefaultApp()));

      const namedApp = 'namedApp';

      await initializeApp(
        name: namedApp,
      );

      App app2 = getAppNamed(namedApp);

      expect(app2.name, equals(namedApp));
      expect(app, equals(getDefaultApp()));
    });
  });
}

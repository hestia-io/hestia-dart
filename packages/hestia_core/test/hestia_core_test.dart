import 'package:test/test.dart';

import 'package:hestia_core/hestia_core.dart';

void main() {
  group('HestiaApp', () {
    const testAppName = 'testApp';
    const testNavigationUrl = 'https://testapp:8080';
    const testProjectId = 'testProjectId';
    const testAppId = 'testAppId';
    const testAppVersion = '1.0.1';

    final HestiaApp testApp = HestiaApp.configure(
      name: testAppName,
      navigationUrl: testNavigationUrl,
      projectId: testProjectId,
      appId: testAppId,
      appVersion: testAppVersion,
    );

    test('configure', () {
      expect(testApp.name, equals(testAppName));
      expect(testApp.navigationUrl, equals(testNavigationUrl));
      expect(testApp.projectId, equals(testProjectId));
      expect(testApp.appId, equals(testAppId));
      expect(testApp.appVersion, equals(testAppVersion));

      final HestiaApp reconfiguredApp = HestiaApp.configure(
        name: testAppName,
        navigationUrl: testNavigationUrl,
        projectId: testProjectId,
        appId: testAppId,
        appVersion: testAppVersion,
      );
      expect(reconfiguredApp, equals(testApp));

      final HestiaApp newApp = HestiaApp.configure(name: 'newApp');
      expect(newApp.name, equals('newApp'));
    });

    test('appNamed', () {
      final HestiaApp existingApp = HestiaApp.appNamed(testAppName);
      expect(existingApp.name, equals(testAppName));

      final HestiaApp missingApp = HestiaApp.appNamed('missingApp');
      expect(missingApp, isNull);
    });

    test('defaultApp', () {
      expect(HestiaApp.defaultApp, equals(testApp));
    });
  });
}

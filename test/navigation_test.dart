import 'dart:async';

import 'package:test/test.dart';

import 'package:hestia/hestia.dart';
import 'package:hestia/server.dart';

@TestOn('vm')
class TestService implements BrowseService {
  String browseId = 'testBrowseId';

  NavigationRequest req;

  NavigationResponse resp;

  Future<NavigationResponse> browse(NavigationRequest req) async {
    this.req = req;
    return resp;
  }
}

void main() {
  group('Navigation', () {
    test('requestNavigation', () async {
      const port = 8089;

      TestService testService = TestService();
      Server server = Server(services: [testService]);
      server.run(port: port);

      const testUrl = 'http://127.0.0.1:${port}';
      const testProjectId = 'testProjectId';
      const testAppId = 'testAppId';
      const testAppVersion = 'testAppVersion';

      await initializeApp(
        navigationUrl: testUrl,
        projectId: testProjectId,
        appId: testAppId,
        appVersion: testAppVersion,
      );

      final NavigationEndpoint testEndpoint = NavigationEndpoint()
        ..browseEndpoint = (BrowseEndpoint()..browseId = testService.browseId);
      const String testContinuation = 'testContinuation';

      testService.resp = NavigationResponse()
        ..contents = (NavigationResponseContents()
          ..sectionListRenderer = SectionListRenderer());

      NavigationResponse response = await Navigation().requestNavigation(
          navigationEndpoint: testEndpoint, continuation: testContinuation);

      expect(testService.req.context.client.appId, equals(testAppId));
      expect(testService.req.context.client.appVersion, equals(testAppVersion));

      expect(response.hasContents(), equals(true));
      expect(response.contents.hasSectionListRenderer(), equals(true));

      server.stop();
    });
  });
}

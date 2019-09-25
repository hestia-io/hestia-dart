import 'dart:async';

import 'package:test/test.dart';
import 'package:grpc/grpc.dart';

import 'package:hestia_navigation/hestia_navigation.dart';
import 'package:hestia_navigation/src/navigation.pbgrpc.dart';

@TestOn('vm')
class TestService extends NavigationServiceBase {
  NavigationRequest req;

  NavigationResponse resp;

  @override
  Future<NavigationResponse> fetch(
      ServiceCall call, NavigationRequest req) async {
    this.req = req;
    return resp;
  }
}

void main() {
  group('Navigation', () {
    test('requestNavigation', () async {
      const port = 8089;

      TestService testService = TestService();
      Server server = Server([testService]);
      await server.serve(port: port);

      const testUrl = 'http://127.0.0.1:${port}';
      const testProjectId = 'testProjectId';
      const testAppId = 'testAppId';
      const testAppVersion = 'testAppVersion';
      const testBrowseId = 'testBrowseId';

      HestiaApp.configure(
        navigationUrl: testUrl,
        projectId: testProjectId,
        appId: testAppId,
        appVersion: testAppVersion,
      );

      final NavigationEndpoint testEndpoint = NavigationEndpoint()
        ..browseEndpoint = (BrowseEndpoint()..browseId = testBrowseId);
      const String testContinuation = 'testContinuation';

      testService.resp = NavigationResponse()
        ..contents = (NavigationResponseContents()
          ..sectionListRenderer = SectionListRenderer());

      NavigationResponse response = await HestiaNavigation().requestNavigation(
          navigationEndpoint: testEndpoint, continuation: testContinuation);

      expect(testService.req.context.client.appId, equals(testAppId));
      expect(testService.req.context.client.appVersion, equals(testAppVersion));

      expect(response.hasContents(), equals(true));
      expect(response.contents.hasSectionListRenderer(), equals(true));

      server.shutdown();
    });
  });
}

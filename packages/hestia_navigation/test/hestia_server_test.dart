import 'dart:async';
import 'package:test/test.dart';
import 'package:grpc/grpc.dart';

import 'package:hestia_navigation/hestia_navigation.dart';
import 'package:hestia_navigation/hestia_server.dart';
import 'package:hestia_navigation/src/navigation.pbgrpc.dart';

@TestOn('vm')
class TestBrowseService implements BrowseService {
  NavigationRequest request;

  NavigationResponse response;

  String browseId = 'testService';

  @override
  Future<NavigationResponse> browse(NavigationRequest request) async {
    this.request = request;
    return response;
  }
}

void main() {
  group('server', () {
    test('run', () async {
      const int port = 8090;
      const String appId = 'testApp';
      const String appVersion = '1.0';

      TestBrowseService testBrowseService = TestBrowseService();
      HestiaServer server = HestiaServer(services: [testBrowseService]);

      server.run(port: port);

      ClientChannel channel = ClientChannel(
        '127.0.0.1',
        port: port,
        options: const ChannelOptions(
          credentials: const ChannelCredentials.insecure(),
        ),
      );

      NavigationRequest request = NavigationRequest()
        ..navigationEndpoint = (NavigationEndpoint()
          ..browseEndpoint =
              (BrowseEndpoint()..browseId = testBrowseService.browseId))
        ..context = (NavigationRequestContext()
          ..client = (NavigationRequestContextClient()
            ..appId = appId
            ..appVersion = appVersion));

      testBrowseService.response = NavigationResponse()
        ..contents = (NavigationResponseContents()
          ..sectionListRenderer = SectionListRenderer());

      NavigationResponse response =
          await NavigationClient(channel).fetch(request);

      expect(testBrowseService.request.context.client.appId, equals(appId));
      expect(testBrowseService.request.context.client.appVersion,
          equals(appVersion));

      expect(response.hasContents(), equals(true));
      expect(response.contents.hasSectionListRenderer(), equals(true));

      channel.shutdown();
      server.stop();
    });
  });
}

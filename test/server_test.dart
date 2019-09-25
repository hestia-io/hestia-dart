import 'dart:async';
import 'package:test/test.dart';
import 'package:grpc/grpc.dart' as grpc;

import 'package:hestia/server.dart';
import 'package:hestia/src/navigation.pbgrpc.dart';

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
      const int port = 8000;
      const String appId = 'testApp';
      const String appVersion = '1.0';

      TestBrowseService testBrowseService = TestBrowseService();
      Server server = Server(services: [testBrowseService]);

      server.run(port: port);

      grpc.ClientChannel channel = grpc.ClientChannel(
        '127.0.0.1',
        port: port,
        options: const grpc.ChannelOptions(
          credentials: const grpc.ChannelCredentials.insecure(),
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

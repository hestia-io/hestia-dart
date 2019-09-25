import 'dart:async';

import 'package:grpc/grpc.dart';

import 'navigation.pbgrpc.dart';

Future<NavigationResponse> requestNavigation(
    {Uri uri, NavigationRequest request}) async {
  ClientChannel channel = ClientChannel(
    uri.host,
    port: uri.port,
    options: const ChannelOptions(
      credentials: const ChannelCredentials.insecure(),
    ),
  );
  NavigationResponse response = await NavigationClient(channel).fetch(request);
  channel.shutdown();
  return response;
}

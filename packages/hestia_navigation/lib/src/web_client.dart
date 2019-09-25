import 'dart:async';

import 'package:grpc/grpc_web.dart';

import 'navigation.pbgrpc.dart';

Future<NavigationResponse> requestNavigation(
    {Uri uri, NavigationRequest request}) async {
  GrpcWebClientChannel channel = GrpcWebClientChannel.xhr(uri);
  NavigationResponse response = await NavigationClient(channel).fetch(request);
  channel.shutdown();
  return response;
}

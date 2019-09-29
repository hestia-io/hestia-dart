import 'navigation.pbgrpc.dart';

Future<NavigationResponse> requestNavigation(
    {Uri uri, NavigationRequest request}) async {
  throw UnsupportedError(
      'Cannot create a client without dart:html or dart:io.');
}

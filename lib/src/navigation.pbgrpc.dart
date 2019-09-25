///
//  Generated code. Do not modify.
//  source: navigation.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'navigation.pb.dart' as $0;
export 'navigation.pb.dart';

class NavigationClient extends $grpc.Client {
  static final _$fetch =
      $grpc.ClientMethod<$0.NavigationRequest, $0.NavigationResponse>(
          '/navigation.Navigation/Fetch',
          ($0.NavigationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.NavigationResponse.fromBuffer(value));

  NavigationClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.NavigationResponse> fetch(
      $0.NavigationRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$fetch, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NavigationServiceBase extends $grpc.Service {
  $core.String get $name => 'navigation.Navigation';

  NavigationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.NavigationRequest, $0.NavigationResponse>(
        'Fetch',
        fetch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NavigationRequest.fromBuffer(value),
        ($0.NavigationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.NavigationResponse> fetch_Pre($grpc.ServiceCall call,
      $async.Future<$0.NavigationRequest> request) async {
    return fetch(call, await request);
  }

  $async.Future<$0.NavigationResponse> fetch(
      $grpc.ServiceCall call, $0.NavigationRequest request);
}

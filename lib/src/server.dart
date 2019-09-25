import 'dart:async';
import 'package:grpc/grpc.dart' as grpc;

import 'navigation.pbgrpc.dart';

abstract class Service {}

abstract class BrowseService implements Service {
  String browseId;

  Future<NavigationResponse> browse(NavigationRequest request) {}
}

class _NavigationService extends NavigationServiceBase {
  set services(List<Service> services) {
    _services = services;
    services.forEach((Service service) {
      if (service is BrowseService) {
        assert(service.browseId != null);
        assert(service.browseId.isNotEmpty);
        assert(!_browseServices.containsKey(service.browseId));

        _browseServices[service.browseId] = service;
      }
    });
  }

  List<Service> get services {
    return _services;
  }

  List<Service> _services = [];

  Map<String, BrowseService> _browseServices = {};

  @override
  Future<NavigationResponse> fetch(
      grpc.ServiceCall call, NavigationRequest request) async {
    try {
      if (request.navigationEndpoint.hasWatchEndpoint()) {
        return null; //handleWatch(request);
      } else {
        String browseId = request?.navigationEndpoint?.browseEndpoint?.browseId;
        return _browseServices[browseId].browse(request);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}

class Server {
  Server({this.services});

  final List<Service> services;

  grpc.Server _server;

  run({int port}) async {
    _server = grpc.Server([_NavigationService()..services = services]);
    try {
      await _server.serve(port: port);
      print('Server listening on port ${port}...');
    } catch (e) {
      print(e);
    }
  }

  stop() async {
    if (_server != null) {
      await _server.shutdown();
    }
  }
}

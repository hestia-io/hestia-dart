library hestia_navigation;

import 'dart:async';
import 'package:hestia_core/hestia_core.dart';

// ignore: uri_does_not_exist
import 'src/client_stub.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) 'src/web_client.dart'
    // ignore: uri_does_not_exist
    if (dart.library.io) 'src/io_client.dart' as client;
import 'src/navigation.pb.dart';

export 'src/navigation.pb.dart';
export 'package:hestia_core/hestia_core.dart';

part 'src/hestia_navigation.dart';

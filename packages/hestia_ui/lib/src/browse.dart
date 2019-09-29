import 'package:flutter/material.dart';
import 'package:hestia_navigation/hestia_navigation.dart';

import 'section_list.dart';

class Browse extends StatefulWidget {
  const Browse({Key key, @required this.navigationEndpoint}) : super(key: key);

  final NavigationEndpoint navigationEndpoint;

  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  Future<NavigationResponse> _response;

  @override
  void initState() {
    super.initState();
    _response = HestiaNavigation()
        .requestNavigation(navigationEndpoint: widget.navigationEndpoint);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NavigationResponse>(
      future: _response,
      builder:
          (BuildContext context, AsyncSnapshot<NavigationResponse> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.active:
          case ConnectionState.waiting:
            return Center(child: Container(child: CircularProgressIndicator()));
          case ConnectionState.done:
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');
            if (snapshot.data.contents == null) return Text('Error: ');
            if (snapshot.data.contents.sectionListRenderer != null) {
              return SectionList(
                  renderer: snapshot.data.contents.sectionListRenderer,
                  navigationEndpoint: widget.navigationEndpoint);
            }
            return Text('Error: ');
        }
        return null; // unreachable
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hestia_navigation/hestia_navigation.dart';

class NewsMetadata extends StatelessWidget {
  const NewsMetadata({Key key, this.renderer}) : super(key: key);

  final NewsMetadataRenderer renderer;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.only(left: 15.0, right: 15.0, top: 13.0, bottom: 9.0),
        child: Text(renderer.title.runs.map((e) => e.text).join(''),
            style:
                TextStyle(fontSize: 25.0, letterSpacing: -1.0, height: 1.02)));
  }
}

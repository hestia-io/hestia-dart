import 'package:flutter/material.dart';
import 'package:hestia_navigation/hestia_navigation.dart';

class NewsContentDetails extends StatelessWidget {
  const NewsContentDetails({Key key, this.renderer}) : super(key: key);

  final NewsContentRenderer renderer;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(0.0),
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        itemCount: renderer.contents.length,
        itemBuilder: (BuildContext context, int index) {
          var content = renderer.contents[index];
          if (content.hasLongText()) {
            return Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Text(
                content.longText.runs.map((run) => run.text).join(''),
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            );
          } else if (content.hasThumbnail()) {
            return Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Image.network(
                content.thumbnail.url,
                fit: BoxFit.scaleDown,
              ),
            );
          }
          return null;
        });
  }
}

import 'package:flutter/material.dart';
import 'package:hestia_navigation/hestia_navigation.dart';

class NewsOwner extends StatelessWidget {
  const NewsOwner({Key key, this.renderer}) : super(key: key);

  final NewsOwnerRenderer renderer;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5.0),
        child: Row(verticalDirection: VerticalDirection.up, children: [
          Container(
              padding: EdgeInsets.only(
                  left: 15.0, right: 10.0, top: 13.0, bottom: 10.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: FadeInImage.assetNetwork(
                      image: renderer.thumbnail.normal.url,
                      placeholder: 'assets/thumbnail_placeholder.jpg',
                      fadeInDuration: const Duration(milliseconds: 140),
                      fadeOutDuration: const Duration(milliseconds: 140),
                      fit: BoxFit.cover,
                      width: 36.0,
                      height: 36.0))),
          Container(
              padding: EdgeInsets.only(
                  left: 0.0, right: 10.0, top: 6.0, bottom: 6.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(bottom: 3.0, top: 0.0),
                        child: Text(
                            renderer.title.runs.map((e) => e.text).join(''),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                letterSpacing: -1.0))),
                    Container(
                        child: Text(
                            renderer.subscriberCountText.runs
                                .map((e) => e.text)
                                .join(''),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 12.0, color: Color(0xFF9C9C9C))))
                  ]))
        ]));
  }
}

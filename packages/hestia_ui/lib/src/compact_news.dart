import 'package:flutter/material.dart';
import 'package:hestia_navigation/hestia_navigation.dart';

class CompactNews extends StatelessWidget {
  const CompactNews({Key key, this.renderer}) : super(key: key);

  final CompactNewsRenderer renderer;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    List<Widget> rightChildren = [];

    double marginLeft = 15.0;
    double marginRight = 15.0;
    const double paddingTop = 12.0;
    const double paddingBottom = 12.0;
    double captionMarginTop = 0.0;
    double captionMarginBottom = 4.0;
    double bylineMarginTop = 0.0;
    double bylineMarginBottom = 0.0;
    double thumbnailRight = 3.0;
    double thumbnailBorderWidth = 0.33;

    double width = MediaQuery.of(context).size.width - marginLeft - marginRight;
    Size thumbnailSize =
        _calcThumbnailSize(width, thumbnailRight, thumbnailBorderWidth);

    BoxDecoration thumbnailDecoration = BoxDecoration(
        border:
            Border.all(color: Color(0xffe8e8e8), width: thumbnailBorderWidth));

    var thumbnails = renderer.thumbnails;
    if (thumbnails != null) {
      if (thumbnails.length == 1) {
        rightChildren.add(Container(
            decoration: thumbnailDecoration,
            margin: EdgeInsets.only(left: 20.0),
            child: _createImage(
                url: thumbnails[0].normal.url,
                width: thumbnailSize.width,
                height: thumbnailSize.height)));
        width = width - thumbnailSize.width - thumbnailBorderWidth * 2 - 20;
        captionMarginTop = 3.0;
        bylineMarginTop = 7.3;
      } else if (thumbnails.length > 1) {
        captionMarginTop = 0.7;
        captionMarginBottom = 4.7;
        bylineMarginTop = 6.0;
        bylineMarginBottom = 2.0;
      }
    }

    var title = renderer.title;
    if (title != null) {
      children.add(new Container(
          width: width,
          margin: EdgeInsets.only(
              bottom: captionMarginBottom, top: captionMarginTop),
          child: new Text(
            title.runs.map((e) => e.text).join(''),
            maxLines: 2,
            textAlign: TextAlign.start,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 0.87, fontSize: 17.0),
          )));
    }

    if (thumbnails != null && thumbnails.length > 1) {
      List<Widget> items = [];
      int index = 0;
      thumbnails.forEach((thumbnail) {
        var right = index > 1 ? 0.0 : thumbnailRight;
        items.add(Container(
            margin: EdgeInsets.only(right: right),
            decoration: thumbnailDecoration,
            child: _createImage(
                url: thumbnail.normal.url,
                width: thumbnailSize.width,
                height: thumbnailSize.height)));
        index++;
      });
      children.add(
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: items));
    }

    var byline = renderer.shortByline;
    if (byline != null) {
      children.add(new Container(
          width: width,
          margin:
              EdgeInsets.only(top: bylineMarginTop, bottom: bylineMarginBottom),
          child: new Text(byline.runs.map((e) => e.text).join(''),
              textAlign: TextAlign.left,
              softWrap: true,
              style: TextStyle(
                  color: Color(0xff9E9E9E),
                  wordSpacing: 2.0,
                  fontSize: 12.0))));
    }

    var leftColumn = Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: children);

    var rightColumn = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: rightChildren,
    );

    var row = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[leftColumn, rightColumn],
    );

    return InkWell(
      child: Container(
        /*
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        */
        padding: EdgeInsets.only(left: marginLeft, right: marginRight),
        child: Container(
          child: row,
          padding: const EdgeInsets.only(
              top: paddingTop, right: 0.0, bottom: paddingBottom, left: 0.0),
          decoration: BoxDecoration(
            //color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Color(0xffe8e8e8), width: 0.7),
            ),
          ),
        ),
      ),
      onTap: () {
        /*
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WatchPage(
              watchId: renderer.navigationEndpoint.watchEndpoint.watchId,
            ),
          ),
        );
        */
      },
    );
  }

  // 计算缩略图宽度
  // 缩率图尺寸一直等于一行能显示3个缩率图时的尺寸
  Size _calcThumbnailSize(
      double rowWidth, double thumbnailRight, double thumbnailBorderWidth) {
    double width = (rowWidth - 2 * thumbnailRight) / 3;
    double height = width * 70.3 / 108.0;
    width -= thumbnailBorderWidth * 2;
    height -= thumbnailBorderWidth * 2;
    return Size(width, height);
  }

  Widget _createImage({String url, double width, double height}) {
    return FadeInImage.assetNetwork(
        image: url,
        placeholder: 'assets/thumbnail_placeholder.jpg',
        fadeInDuration: const Duration(milliseconds: 140),
        fadeOutDuration: const Duration(milliseconds: 140),
        fit: BoxFit.cover,
        width: width,
        height: height);
  }
}

import 'package:flutter/material.dart';
import 'package:hestia_navigation/hestia_navigation.dart';

import 'compact_news.dart';
import 'spinner.dart';
import 'news_metadata.dart';
import 'news_owner.dart';
import 'news_content_details.dart';
import 'paginated_table.dart';

class ItemSection extends StatelessWidget {
  const ItemSection({Key key, this.renderer}) : super(key: key);

  final ItemSectionRenderer renderer;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(0.0),
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        itemCount: renderer.contents.length,
        itemBuilder: (BuildContext context, int index) {
          ItemSectionContent content = renderer.contents[index];
          if (content.hasCompactNewsRenderer()) {
            return CompactNews(renderer: content.compactNewsRenderer);
          } else if (content.hasSpinnerRenderer()) {
            return Spinner();
          } else if (content.hasNewsMetadataRenderer()) {
            return NewsMetadata(renderer: content.newsMetadataRenderer);
          } else if (content.hasNewsOwnerRenderer()) {
            return NewsOwner(renderer: content.newsOwnerRenderer);
          } else if (content.hasNewsContentRenderer()) {
            return NewsContentDetails(renderer: content.newsContentRenderer);
          } else if (content.hasPaginatedTableRenderer()) {
            return PaginatedTable(renderer: content.paginatedTableRenderer);
          }
          return null;
        });
  }
}

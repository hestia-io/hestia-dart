import 'package:flutter/material.dart';
import 'package:hestia_navigation/hestia_navigation.dart';

import 'item_section.dart';

class SectionList extends StatefulWidget {
  const SectionList(
      {Key key,
      @required this.renderer,
      @required this.navigationEndpoint,
      this.continuous = true,
      this.refreshable = true})
      : super(key: key);

  final SectionListRenderer renderer;

  final NavigationEndpoint navigationEndpoint;

  final bool continuous;

  final bool refreshable;

  @override
  _SectionListState createState() => _SectionListState();
}

class _SectionListState extends State<SectionList> {
  List<SectionListContent> _contents;

  NextContinuationData _nextContinuationData;

  ScrollController _controller;

  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _contents = widget.renderer.contents;
    if (widget.continuous) {
      if (_contents != null && _contents.isNotEmpty) {
        var continuations = _contents.last?.itemSectionRenderer?.continuations;
        if (continuations != null && continuations.isNotEmpty) {
          _nextContinuationData = continuations.last?.nextContinuationData;
        }
      }
      _controller = ScrollController()..addListener(_handleScroll);
    }
  }

  // 统一处理添加/删除列表中的spinner
  void _updateSpinner() {
    if (_hasLastItemSectionContents()) {
      var c = _getLastItemSectionContents();
      // 清理列表中所有的spinner
      c.removeWhere((ItemSectionContent item) => item?.hasSpinnerRenderer());
      // 如果存在nextContinuation添加spinner
      if (_hasNextContinuation()) {
        c.add(ItemSectionContent()..spinnerRenderer = SpinnerRenderer());
      }
    }
  }

  bool _hasNextContinuation() {
    if (_nextContinuationData == null) return false;
    if (_nextContinuationData.continuation == null) return false;
    if (_nextContinuationData.continuation == '') return false;
    return true;
  }

  bool _hasLastItemSectionContents() {
    if (_contents == null) return false;
    if (_contents.isEmpty) return false;
    if (_contents.last.itemSectionRenderer == null) return false;
    return true;
  }

  _getLastItemSectionContents() {
    return _contents.last.itemSectionRenderer.contents;
  }

  void _handleScroll() {
    if (_loading) return;
    if (_nextContinuationData == null) return;
    if (_nextContinuationData.continuation == '') return;

    if (_contents.isEmpty) return;
    if (!_contents.last.hasItemSectionRenderer()) return;

    if (_controller.position.extentAfter < 40) {
      _loading = true;
      _continue();
    }
  }

  _continue() async {
    NavigationResponse response = await HestiaNavigation().requestNavigation(
        navigationEndpoint: widget.navigationEndpoint,
        continuation: _nextContinuationData.continuation);
    _loading = false;

    if (response == null) return;
    if (!response.hasContinuationContents()) return;
    if (!response.continuationContents.hasItemSectionContinuation()) return;

    ItemSectionContinuation itemSectionContinuation =
        response.continuationContents.itemSectionContinuation;

    if (itemSectionContinuation.contents == null) return;
    if (itemSectionContinuation.contents.isEmpty) return;

    setState(() {
      var continuations = itemSectionContinuation.continuations;
      if (continuations.isNotEmpty) {
        _nextContinuationData = continuations.last?.nextContinuationData;
      } else {
        _nextContinuationData = null;
      }
      _contents.last.itemSectionRenderer.contents
        ..addAll(itemSectionContinuation.contents);
    });
  }

  @override
  void dispose() {
    if (widget.continuous) {
      _controller.removeListener(_handleScroll);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.continuous) {
      _updateSpinner();
    }
    ListView listView = ListView.builder(
        controller: _controller,
        padding: EdgeInsets.all(0.0),
        itemCount: _contents.length,
        itemBuilder: (BuildContext context, int index) {
          SectionListContent content = _contents[index];
          if (content.itemSectionRenderer != null) {
            return ItemSection(renderer: content.itemSectionRenderer);
          }
          return null;
        });

    if (widget.renderer.hasRefreshIndicatorRenderer() &&
        widget.renderer.refreshIndicatorRenderer.hasNavigationEndpoint()) {
      return RefreshIndicator(
          child: listView,
          onRefresh: () async {
            NavigationResponse response = await HestiaNavigation()
                .requestNavigation(
                    navigationEndpoint: widget
                        .renderer.refreshIndicatorRenderer.navigationEndpoint);
            if (response?.contents?.sectionListRenderer != null) {
              setState(() {
                _contents = response.contents.sectionListRenderer.contents;
                if (_contents != null && _contents.isNotEmpty) {
                  var continuations =
                      _contents.last?.itemSectionRenderer?.continuations;
                  if (continuations != null && continuations.isNotEmpty) {
                    _nextContinuationData =
                        continuations.last?.nextContinuationData;
                  }
                }
                _loading = false;
              });
            }
          });
    } else {
      return listView;
    }
  }
}

///
//  Generated code. Do not modify.
//  source: navigation.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IconRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('IconRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..aOS(1, 'iconType', protoName: 'iconType')
    ..hasRequiredFields = false
  ;

  IconRenderer._() : super();
  factory IconRenderer() => create();
  factory IconRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IconRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  IconRenderer clone() => IconRenderer()..mergeFromMessage(this);
  IconRenderer copyWith(void Function(IconRenderer) updates) => super.copyWith((message) => updates(message as IconRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IconRenderer create() => IconRenderer._();
  IconRenderer createEmptyInstance() => create();
  static $pb.PbList<IconRenderer> createRepeated() => $pb.PbList<IconRenderer>();
  static IconRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static IconRenderer _defaultInstance;

  $core.String get iconType => $_getS(0, '');
  set iconType($core.String v) { $_setString(0, v); }
  $core.bool hasIconType() => $_has(0);
  void clearIconType() => clearField(1);
}

class Run extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Run', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<NavigationEndpoint>(1, 'navigationEndpoint', $pb.PbFieldType.OM, protoName: 'navigationEndpoint', defaultOrMaker: NavigationEndpoint.getDefault, subBuilder: NavigationEndpoint.create)
    ..aOS(2, 'text')
    ..hasRequiredFields = false
  ;

  Run._() : super();
  factory Run() => create();
  factory Run.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Run.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Run clone() => Run()..mergeFromMessage(this);
  Run copyWith(void Function(Run) updates) => super.copyWith((message) => updates(message as Run));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Run create() => Run._();
  Run createEmptyInstance() => create();
  static $pb.PbList<Run> createRepeated() => $pb.PbList<Run>();
  static Run getDefault() => _defaultInstance ??= create()..freeze();
  static Run _defaultInstance;

  NavigationEndpoint get navigationEndpoint => $_getN(0);
  set navigationEndpoint(NavigationEndpoint v) { setField(1, v); }
  $core.bool hasNavigationEndpoint() => $_has(0);
  void clearNavigationEndpoint() => clearField(1);

  $core.String get text => $_getS(1, '');
  set text($core.String v) { $_setString(1, v); }
  $core.bool hasText() => $_has(1);
  void clearText() => clearField(2);
}

class Runs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Runs', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..pc<Run>(1, 'runs', $pb.PbFieldType.PM, subBuilder: Run.create)
    ..hasRequiredFields = false
  ;

  Runs._() : super();
  factory Runs() => create();
  factory Runs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Runs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Runs clone() => Runs()..mergeFromMessage(this);
  Runs copyWith(void Function(Runs) updates) => super.copyWith((message) => updates(message as Runs));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Runs create() => Runs._();
  Runs createEmptyInstance() => create();
  static $pb.PbList<Runs> createRepeated() => $pb.PbList<Runs>();
  static Runs getDefault() => _defaultInstance ??= create()..freeze();
  static Runs _defaultInstance;

  $core.List<Run> get runs => $_getList(0);
}

class Thumbnail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Thumbnail', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..aOS(1, 'url')
    ..a<$core.int>(2, 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'height', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Thumbnail._() : super();
  factory Thumbnail() => create();
  factory Thumbnail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Thumbnail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Thumbnail clone() => Thumbnail()..mergeFromMessage(this);
  Thumbnail copyWith(void Function(Thumbnail) updates) => super.copyWith((message) => updates(message as Thumbnail));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Thumbnail create() => Thumbnail._();
  Thumbnail createEmptyInstance() => create();
  static $pb.PbList<Thumbnail> createRepeated() => $pb.PbList<Thumbnail>();
  static Thumbnail getDefault() => _defaultInstance ??= create()..freeze();
  static Thumbnail _defaultInstance;

  $core.String get url => $_getS(0, '');
  set url($core.String v) { $_setString(0, v); }
  $core.bool hasUrl() => $_has(0);
  void clearUrl() => clearField(1);

  $core.int get width => $_get(1, 0);
  set width($core.int v) { $_setSignedInt32(1, v); }
  $core.bool hasWidth() => $_has(1);
  void clearWidth() => clearField(2);

  $core.int get height => $_get(2, 0);
  set height($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasHeight() => $_has(2);
  void clearHeight() => clearField(3);
}

class Thumbnails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Thumbnails', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<Thumbnail>(1, 'normal', $pb.PbFieldType.OM, defaultOrMaker: Thumbnail.getDefault, subBuilder: Thumbnail.create)
    ..a<Thumbnail>(2, 'medium', $pb.PbFieldType.OM, defaultOrMaker: Thumbnail.getDefault, subBuilder: Thumbnail.create)
    ..hasRequiredFields = false
  ;

  Thumbnails._() : super();
  factory Thumbnails() => create();
  factory Thumbnails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Thumbnails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Thumbnails clone() => Thumbnails()..mergeFromMessage(this);
  Thumbnails copyWith(void Function(Thumbnails) updates) => super.copyWith((message) => updates(message as Thumbnails));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Thumbnails create() => Thumbnails._();
  Thumbnails createEmptyInstance() => create();
  static $pb.PbList<Thumbnails> createRepeated() => $pb.PbList<Thumbnails>();
  static Thumbnails getDefault() => _defaultInstance ??= create()..freeze();
  static Thumbnails _defaultInstance;

  Thumbnail get normal => $_getN(0);
  set normal(Thumbnail v) { setField(1, v); }
  $core.bool hasNormal() => $_has(0);
  void clearNormal() => clearField(1);

  Thumbnail get medium => $_getN(1);
  set medium(Thumbnail v) { setField(2, v); }
  $core.bool hasMedium() => $_has(1);
  void clearMedium() => clearField(2);
}

class NavigationEndpoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NavigationEndpoint', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<BrowseEndpoint>(1, 'browseEndpoint', $pb.PbFieldType.OM, protoName: 'browseEndpoint', defaultOrMaker: BrowseEndpoint.getDefault, subBuilder: BrowseEndpoint.create)
    ..a<WatchEndpoint>(2, 'watchEndpoint', $pb.PbFieldType.OM, protoName: 'watchEndpoint', defaultOrMaker: WatchEndpoint.getDefault, subBuilder: WatchEndpoint.create)
    ..aOS(3, 'clickTrackingParams', protoName: 'clickTrackingParams')
    ..hasRequiredFields = false
  ;

  NavigationEndpoint._() : super();
  factory NavigationEndpoint() => create();
  factory NavigationEndpoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NavigationEndpoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NavigationEndpoint clone() => NavigationEndpoint()..mergeFromMessage(this);
  NavigationEndpoint copyWith(void Function(NavigationEndpoint) updates) => super.copyWith((message) => updates(message as NavigationEndpoint));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NavigationEndpoint create() => NavigationEndpoint._();
  NavigationEndpoint createEmptyInstance() => create();
  static $pb.PbList<NavigationEndpoint> createRepeated() => $pb.PbList<NavigationEndpoint>();
  static NavigationEndpoint getDefault() => _defaultInstance ??= create()..freeze();
  static NavigationEndpoint _defaultInstance;

  BrowseEndpoint get browseEndpoint => $_getN(0);
  set browseEndpoint(BrowseEndpoint v) { setField(1, v); }
  $core.bool hasBrowseEndpoint() => $_has(0);
  void clearBrowseEndpoint() => clearField(1);

  WatchEndpoint get watchEndpoint => $_getN(1);
  set watchEndpoint(WatchEndpoint v) { setField(2, v); }
  $core.bool hasWatchEndpoint() => $_has(1);
  void clearWatchEndpoint() => clearField(2);

  $core.String get clickTrackingParams => $_getS(2, '');
  set clickTrackingParams($core.String v) { $_setString(2, v); }
  $core.bool hasClickTrackingParams() => $_has(2);
  void clearClickTrackingParams() => clearField(3);
}

class NextContinuationData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NextContinuationData', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..aOS(1, 'clickTrackingParams', protoName: 'clickTrackingParams')
    ..aOS(2, 'continuation')
    ..hasRequiredFields = false
  ;

  NextContinuationData._() : super();
  factory NextContinuationData() => create();
  factory NextContinuationData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NextContinuationData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NextContinuationData clone() => NextContinuationData()..mergeFromMessage(this);
  NextContinuationData copyWith(void Function(NextContinuationData) updates) => super.copyWith((message) => updates(message as NextContinuationData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NextContinuationData create() => NextContinuationData._();
  NextContinuationData createEmptyInstance() => create();
  static $pb.PbList<NextContinuationData> createRepeated() => $pb.PbList<NextContinuationData>();
  static NextContinuationData getDefault() => _defaultInstance ??= create()..freeze();
  static NextContinuationData _defaultInstance;

  $core.String get clickTrackingParams => $_getS(0, '');
  set clickTrackingParams($core.String v) { $_setString(0, v); }
  $core.bool hasClickTrackingParams() => $_has(0);
  void clearClickTrackingParams() => clearField(1);

  $core.String get continuation => $_getS(1, '');
  set continuation($core.String v) { $_setString(1, v); }
  $core.bool hasContinuation() => $_has(1);
  void clearContinuation() => clearField(2);
}

class Continuation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Continuation', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<NextContinuationData>(1, 'nextContinuationData', $pb.PbFieldType.OM, protoName: 'nextContinuationData', defaultOrMaker: NextContinuationData.getDefault, subBuilder: NextContinuationData.create)
    ..hasRequiredFields = false
  ;

  Continuation._() : super();
  factory Continuation() => create();
  factory Continuation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Continuation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Continuation clone() => Continuation()..mergeFromMessage(this);
  Continuation copyWith(void Function(Continuation) updates) => super.copyWith((message) => updates(message as Continuation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Continuation create() => Continuation._();
  Continuation createEmptyInstance() => create();
  static $pb.PbList<Continuation> createRepeated() => $pb.PbList<Continuation>();
  static Continuation getDefault() => _defaultInstance ??= create()..freeze();
  static Continuation _defaultInstance;

  NextContinuationData get nextContinuationData => $_getN(0);
  set nextContinuationData(NextContinuationData v) { setField(1, v); }
  $core.bool hasNextContinuationData() => $_has(0);
  void clearNextContinuationData() => clearField(1);
}

class SpinnerRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SpinnerRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SpinnerRenderer._() : super();
  factory SpinnerRenderer() => create();
  factory SpinnerRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpinnerRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SpinnerRenderer clone() => SpinnerRenderer()..mergeFromMessage(this);
  SpinnerRenderer copyWith(void Function(SpinnerRenderer) updates) => super.copyWith((message) => updates(message as SpinnerRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpinnerRenderer create() => SpinnerRenderer._();
  SpinnerRenderer createEmptyInstance() => create();
  static $pb.PbList<SpinnerRenderer> createRepeated() => $pb.PbList<SpinnerRenderer>();
  static SpinnerRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static SpinnerRenderer _defaultInstance;
}

class CompactNewsRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CompactNewsRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<NavigationEndpoint>(1, 'navigationEndpoint', $pb.PbFieldType.OM, protoName: 'navigationEndpoint', defaultOrMaker: NavigationEndpoint.getDefault, subBuilder: NavigationEndpoint.create)
    ..a<Runs>(2, 'title', $pb.PbFieldType.OM, defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..a<Runs>(3, 'shortByline', $pb.PbFieldType.OM, protoName: 'shortByline', defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..pc<Thumbnails>(4, 'thumbnails', $pb.PbFieldType.PM, subBuilder: Thumbnails.create)
    ..aOS(5, 'trackingParams', protoName: 'trackingParams')
    ..hasRequiredFields = false
  ;

  CompactNewsRenderer._() : super();
  factory CompactNewsRenderer() => create();
  factory CompactNewsRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CompactNewsRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CompactNewsRenderer clone() => CompactNewsRenderer()..mergeFromMessage(this);
  CompactNewsRenderer copyWith(void Function(CompactNewsRenderer) updates) => super.copyWith((message) => updates(message as CompactNewsRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CompactNewsRenderer create() => CompactNewsRenderer._();
  CompactNewsRenderer createEmptyInstance() => create();
  static $pb.PbList<CompactNewsRenderer> createRepeated() => $pb.PbList<CompactNewsRenderer>();
  static CompactNewsRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static CompactNewsRenderer _defaultInstance;

  NavigationEndpoint get navigationEndpoint => $_getN(0);
  set navigationEndpoint(NavigationEndpoint v) { setField(1, v); }
  $core.bool hasNavigationEndpoint() => $_has(0);
  void clearNavigationEndpoint() => clearField(1);

  Runs get title => $_getN(1);
  set title(Runs v) { setField(2, v); }
  $core.bool hasTitle() => $_has(1);
  void clearTitle() => clearField(2);

  Runs get shortByline => $_getN(2);
  set shortByline(Runs v) { setField(3, v); }
  $core.bool hasShortByline() => $_has(2);
  void clearShortByline() => clearField(3);

  $core.List<Thumbnails> get thumbnails => $_getList(3);

  $core.String get trackingParams => $_getS(4, '');
  set trackingParams($core.String v) { $_setString(4, v); }
  $core.bool hasTrackingParams() => $_has(4);
  void clearTrackingParams() => clearField(5);
}

class NewsMetadataRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewsMetadataRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<Runs>(1, 'title', $pb.PbFieldType.OM, defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..hasRequiredFields = false
  ;

  NewsMetadataRenderer._() : super();
  factory NewsMetadataRenderer() => create();
  factory NewsMetadataRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewsMetadataRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewsMetadataRenderer clone() => NewsMetadataRenderer()..mergeFromMessage(this);
  NewsMetadataRenderer copyWith(void Function(NewsMetadataRenderer) updates) => super.copyWith((message) => updates(message as NewsMetadataRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewsMetadataRenderer create() => NewsMetadataRenderer._();
  NewsMetadataRenderer createEmptyInstance() => create();
  static $pb.PbList<NewsMetadataRenderer> createRepeated() => $pb.PbList<NewsMetadataRenderer>();
  static NewsMetadataRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static NewsMetadataRenderer _defaultInstance;

  Runs get title => $_getN(0);
  set title(Runs v) { setField(1, v); }
  $core.bool hasTitle() => $_has(0);
  void clearTitle() => clearField(1);
}

class NewsOwnerRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewsOwnerRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<Runs>(1, 'title', $pb.PbFieldType.OM, defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..a<Thumbnails>(2, 'thumbnail', $pb.PbFieldType.OM, defaultOrMaker: Thumbnails.getDefault, subBuilder: Thumbnails.create)
    ..a<Runs>(3, 'subscriberCountText', $pb.PbFieldType.OM, protoName: 'subscriberCountText', defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..hasRequiredFields = false
  ;

  NewsOwnerRenderer._() : super();
  factory NewsOwnerRenderer() => create();
  factory NewsOwnerRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewsOwnerRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewsOwnerRenderer clone() => NewsOwnerRenderer()..mergeFromMessage(this);
  NewsOwnerRenderer copyWith(void Function(NewsOwnerRenderer) updates) => super.copyWith((message) => updates(message as NewsOwnerRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewsOwnerRenderer create() => NewsOwnerRenderer._();
  NewsOwnerRenderer createEmptyInstance() => create();
  static $pb.PbList<NewsOwnerRenderer> createRepeated() => $pb.PbList<NewsOwnerRenderer>();
  static NewsOwnerRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static NewsOwnerRenderer _defaultInstance;

  Runs get title => $_getN(0);
  set title(Runs v) { setField(1, v); }
  $core.bool hasTitle() => $_has(0);
  void clearTitle() => clearField(1);

  Thumbnails get thumbnail => $_getN(1);
  set thumbnail(Thumbnails v) { setField(2, v); }
  $core.bool hasThumbnail() => $_has(1);
  void clearThumbnail() => clearField(2);

  Runs get subscriberCountText => $_getN(2);
  set subscriberCountText(Runs v) { setField(3, v); }
  $core.bool hasSubscriberCountText() => $_has(2);
  void clearSubscriberCountText() => clearField(3);
}

class NewsContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewsContent', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<Runs>(1, 'longText', $pb.PbFieldType.OM, protoName: 'longText', defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..a<Thumbnail>(2, 'thumbnail', $pb.PbFieldType.OM, defaultOrMaker: Thumbnail.getDefault, subBuilder: Thumbnail.create)
    ..hasRequiredFields = false
  ;

  NewsContent._() : super();
  factory NewsContent() => create();
  factory NewsContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewsContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewsContent clone() => NewsContent()..mergeFromMessage(this);
  NewsContent copyWith(void Function(NewsContent) updates) => super.copyWith((message) => updates(message as NewsContent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewsContent create() => NewsContent._();
  NewsContent createEmptyInstance() => create();
  static $pb.PbList<NewsContent> createRepeated() => $pb.PbList<NewsContent>();
  static NewsContent getDefault() => _defaultInstance ??= create()..freeze();
  static NewsContent _defaultInstance;

  Runs get longText => $_getN(0);
  set longText(Runs v) { setField(1, v); }
  $core.bool hasLongText() => $_has(0);
  void clearLongText() => clearField(1);

  Thumbnail get thumbnail => $_getN(1);
  set thumbnail(Thumbnail v) { setField(2, v); }
  $core.bool hasThumbnail() => $_has(1);
  void clearThumbnail() => clearField(2);
}

class NewsContentRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewsContentRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..pc<NewsContent>(1, 'contents', $pb.PbFieldType.PM, subBuilder: NewsContent.create)
    ..hasRequiredFields = false
  ;

  NewsContentRenderer._() : super();
  factory NewsContentRenderer() => create();
  factory NewsContentRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewsContentRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NewsContentRenderer clone() => NewsContentRenderer()..mergeFromMessage(this);
  NewsContentRenderer copyWith(void Function(NewsContentRenderer) updates) => super.copyWith((message) => updates(message as NewsContentRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewsContentRenderer create() => NewsContentRenderer._();
  NewsContentRenderer createEmptyInstance() => create();
  static $pb.PbList<NewsContentRenderer> createRepeated() => $pb.PbList<NewsContentRenderer>();
  static NewsContentRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static NewsContentRenderer _defaultInstance;

  $core.List<NewsContent> get contents => $_getList(0);
}

class EditButtonRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditButtonRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<Runs>(1, 'buttonText', $pb.PbFieldType.OM, protoName: 'buttonText', defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..hasRequiredFields = false
  ;

  EditButtonRenderer._() : super();
  factory EditButtonRenderer() => create();
  factory EditButtonRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditButtonRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditButtonRenderer clone() => EditButtonRenderer()..mergeFromMessage(this);
  EditButtonRenderer copyWith(void Function(EditButtonRenderer) updates) => super.copyWith((message) => updates(message as EditButtonRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditButtonRenderer create() => EditButtonRenderer._();
  EditButtonRenderer createEmptyInstance() => create();
  static $pb.PbList<EditButtonRenderer> createRepeated() => $pb.PbList<EditButtonRenderer>();
  static EditButtonRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static EditButtonRenderer _defaultInstance;

  Runs get buttonText => $_getN(0);
  set buttonText(Runs v) { setField(1, v); }
  $core.bool hasButtonText() => $_has(0);
  void clearButtonText() => clearField(1);
}

class EditButton extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EditButton', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<EditButtonRenderer>(1, 'editButtonRenderer', $pb.PbFieldType.OM, protoName: 'editButtonRenderer', defaultOrMaker: EditButtonRenderer.getDefault, subBuilder: EditButtonRenderer.create)
    ..hasRequiredFields = false
  ;

  EditButton._() : super();
  factory EditButton() => create();
  factory EditButton.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditButton.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EditButton clone() => EditButton()..mergeFromMessage(this);
  EditButton copyWith(void Function(EditButton) updates) => super.copyWith((message) => updates(message as EditButton));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EditButton create() => EditButton._();
  EditButton createEmptyInstance() => create();
  static $pb.PbList<EditButton> createRepeated() => $pb.PbList<EditButton>();
  static EditButton getDefault() => _defaultInstance ??= create()..freeze();
  static EditButton _defaultInstance;

  EditButtonRenderer get editButtonRenderer => $_getN(0);
  set editButtonRenderer(EditButtonRenderer v) { setField(1, v); }
  $core.bool hasEditButtonRenderer() => $_has(0);
  void clearEditButtonRenderer() => clearField(1);
}

class TableColumnContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TableColumnContent', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<Runs>(1, 'text', $pb.PbFieldType.OM, defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..a<IconRenderer>(2, 'icon', $pb.PbFieldType.OM, defaultOrMaker: IconRenderer.getDefault, subBuilder: IconRenderer.create)
    ..hasRequiredFields = false
  ;

  TableColumnContent._() : super();
  factory TableColumnContent() => create();
  factory TableColumnContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableColumnContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TableColumnContent clone() => TableColumnContent()..mergeFromMessage(this);
  TableColumnContent copyWith(void Function(TableColumnContent) updates) => super.copyWith((message) => updates(message as TableColumnContent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TableColumnContent create() => TableColumnContent._();
  TableColumnContent createEmptyInstance() => create();
  static $pb.PbList<TableColumnContent> createRepeated() => $pb.PbList<TableColumnContent>();
  static TableColumnContent getDefault() => _defaultInstance ??= create()..freeze();
  static TableColumnContent _defaultInstance;

  Runs get text => $_getN(0);
  set text(Runs v) { setField(1, v); }
  $core.bool hasText() => $_has(0);
  void clearText() => clearField(1);

  IconRenderer get icon => $_getN(1);
  set icon(IconRenderer v) { setField(2, v); }
  $core.bool hasIcon() => $_has(1);
  void clearIcon() => clearField(2);
}

class TableColumnRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TableColumnRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..pc<TableColumnContent>(1, 'contents', $pb.PbFieldType.PM, subBuilder: TableColumnContent.create)
    ..hasRequiredFields = false
  ;

  TableColumnRenderer._() : super();
  factory TableColumnRenderer() => create();
  factory TableColumnRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableColumnRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TableColumnRenderer clone() => TableColumnRenderer()..mergeFromMessage(this);
  TableColumnRenderer copyWith(void Function(TableColumnRenderer) updates) => super.copyWith((message) => updates(message as TableColumnRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TableColumnRenderer create() => TableColumnRenderer._();
  TableColumnRenderer createEmptyInstance() => create();
  static $pb.PbList<TableColumnRenderer> createRepeated() => $pb.PbList<TableColumnRenderer>();
  static TableColumnRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static TableColumnRenderer _defaultInstance;

  $core.List<TableColumnContent> get contents => $_getList(0);
}

class TableRowRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TableRowRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..pc<TableCellRenderer>(1, 'cells', $pb.PbFieldType.PM, subBuilder: TableCellRenderer.create)
    ..hasRequiredFields = false
  ;

  TableRowRenderer._() : super();
  factory TableRowRenderer() => create();
  factory TableRowRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableRowRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TableRowRenderer clone() => TableRowRenderer()..mergeFromMessage(this);
  TableRowRenderer copyWith(void Function(TableRowRenderer) updates) => super.copyWith((message) => updates(message as TableRowRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TableRowRenderer create() => TableRowRenderer._();
  TableRowRenderer createEmptyInstance() => create();
  static $pb.PbList<TableRowRenderer> createRepeated() => $pb.PbList<TableRowRenderer>();
  static TableRowRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static TableRowRenderer _defaultInstance;

  $core.List<TableCellRenderer> get cells => $_getList(0);
}

class ChipRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChipRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<Runs>(1, 'label', $pb.PbFieldType.OM, defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..hasRequiredFields = false
  ;

  ChipRenderer._() : super();
  factory ChipRenderer() => create();
  factory ChipRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChipRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChipRenderer clone() => ChipRenderer()..mergeFromMessage(this);
  ChipRenderer copyWith(void Function(ChipRenderer) updates) => super.copyWith((message) => updates(message as ChipRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChipRenderer create() => ChipRenderer._();
  ChipRenderer createEmptyInstance() => create();
  static $pb.PbList<ChipRenderer> createRepeated() => $pb.PbList<ChipRenderer>();
  static ChipRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static ChipRenderer _defaultInstance;

  Runs get label => $_getN(0);
  set label(Runs v) { setField(1, v); }
  $core.bool hasLabel() => $_has(0);
  void clearLabel() => clearField(1);
}

class TableCellContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TableCellContent', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<Runs>(1, 'text', $pb.PbFieldType.OM, defaultOrMaker: Runs.getDefault, subBuilder: Runs.create)
    ..a<IconRenderer>(2, 'icon', $pb.PbFieldType.OM, defaultOrMaker: IconRenderer.getDefault, subBuilder: IconRenderer.create)
    ..a<Thumbnails>(3, 'thumbnail', $pb.PbFieldType.OM, defaultOrMaker: Thumbnails.getDefault, subBuilder: Thumbnails.create)
    ..a<ChipRenderer>(4, 'chip', $pb.PbFieldType.OM, defaultOrMaker: ChipRenderer.getDefault, subBuilder: ChipRenderer.create)
    ..hasRequiredFields = false
  ;

  TableCellContent._() : super();
  factory TableCellContent() => create();
  factory TableCellContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableCellContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TableCellContent clone() => TableCellContent()..mergeFromMessage(this);
  TableCellContent copyWith(void Function(TableCellContent) updates) => super.copyWith((message) => updates(message as TableCellContent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TableCellContent create() => TableCellContent._();
  TableCellContent createEmptyInstance() => create();
  static $pb.PbList<TableCellContent> createRepeated() => $pb.PbList<TableCellContent>();
  static TableCellContent getDefault() => _defaultInstance ??= create()..freeze();
  static TableCellContent _defaultInstance;

  Runs get text => $_getN(0);
  set text(Runs v) { setField(1, v); }
  $core.bool hasText() => $_has(0);
  void clearText() => clearField(1);

  IconRenderer get icon => $_getN(1);
  set icon(IconRenderer v) { setField(2, v); }
  $core.bool hasIcon() => $_has(1);
  void clearIcon() => clearField(2);

  Thumbnails get thumbnail => $_getN(2);
  set thumbnail(Thumbnails v) { setField(3, v); }
  $core.bool hasThumbnail() => $_has(2);
  void clearThumbnail() => clearField(3);

  ChipRenderer get chip => $_getN(3);
  set chip(ChipRenderer v) { setField(4, v); }
  $core.bool hasChip() => $_has(3);
  void clearChip() => clearField(4);
}

class TableCellRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TableCellRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..pc<TableCellContent>(1, 'contents', $pb.PbFieldType.PM, subBuilder: TableCellContent.create)
    ..aOB(2, 'showEditIcon', protoName: 'showEditIcon')
    ..hasRequiredFields = false
  ;

  TableCellRenderer._() : super();
  factory TableCellRenderer() => create();
  factory TableCellRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableCellRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TableCellRenderer clone() => TableCellRenderer()..mergeFromMessage(this);
  TableCellRenderer copyWith(void Function(TableCellRenderer) updates) => super.copyWith((message) => updates(message as TableCellRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TableCellRenderer create() => TableCellRenderer._();
  TableCellRenderer createEmptyInstance() => create();
  static $pb.PbList<TableCellRenderer> createRepeated() => $pb.PbList<TableCellRenderer>();
  static TableCellRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static TableCellRenderer _defaultInstance;

  $core.List<TableCellContent> get contents => $_getList(0);

  $core.bool get showEditIcon => $_get(1, false);
  set showEditIcon($core.bool v) { $_setBool(1, v); }
  $core.bool hasShowEditIcon() => $_has(1);
  void clearShowEditIcon() => clearField(2);
}

class PaginatedTableRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PaginatedTableRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..pc<TableColumnRenderer>(1, 'columns', $pb.PbFieldType.PM, subBuilder: TableColumnRenderer.create)
    ..pc<TableRowRenderer>(2, 'rows', $pb.PbFieldType.PM, subBuilder: TableRowRenderer.create)
    ..hasRequiredFields = false
  ;

  PaginatedTableRenderer._() : super();
  factory PaginatedTableRenderer() => create();
  factory PaginatedTableRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaginatedTableRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PaginatedTableRenderer clone() => PaginatedTableRenderer()..mergeFromMessage(this);
  PaginatedTableRenderer copyWith(void Function(PaginatedTableRenderer) updates) => super.copyWith((message) => updates(message as PaginatedTableRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaginatedTableRenderer create() => PaginatedTableRenderer._();
  PaginatedTableRenderer createEmptyInstance() => create();
  static $pb.PbList<PaginatedTableRenderer> createRepeated() => $pb.PbList<PaginatedTableRenderer>();
  static PaginatedTableRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static PaginatedTableRenderer _defaultInstance;

  $core.List<TableColumnRenderer> get columns => $_getList(0);

  $core.List<TableRowRenderer> get rows => $_getList(1);
}

class ItemSectionContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemSectionContent', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<CompactNewsRenderer>(1, 'compactNewsRenderer', $pb.PbFieldType.OM, protoName: 'compactNewsRenderer', defaultOrMaker: CompactNewsRenderer.getDefault, subBuilder: CompactNewsRenderer.create)
    ..a<SpinnerRenderer>(2, 'spinnerRenderer', $pb.PbFieldType.OM, protoName: 'spinnerRenderer', defaultOrMaker: SpinnerRenderer.getDefault, subBuilder: SpinnerRenderer.create)
    ..a<NewsMetadataRenderer>(3, 'newsMetadataRenderer', $pb.PbFieldType.OM, protoName: 'newsMetadataRenderer', defaultOrMaker: NewsMetadataRenderer.getDefault, subBuilder: NewsMetadataRenderer.create)
    ..a<NewsOwnerRenderer>(4, 'newsOwnerRenderer', $pb.PbFieldType.OM, protoName: 'newsOwnerRenderer', defaultOrMaker: NewsOwnerRenderer.getDefault, subBuilder: NewsOwnerRenderer.create)
    ..a<NewsContentRenderer>(5, 'newsContentRenderer', $pb.PbFieldType.OM, protoName: 'newsContentRenderer', defaultOrMaker: NewsContentRenderer.getDefault, subBuilder: NewsContentRenderer.create)
    ..a<PaginatedTableRenderer>(6, 'paginatedTableRenderer', $pb.PbFieldType.OM, protoName: 'paginatedTableRenderer', defaultOrMaker: PaginatedTableRenderer.getDefault, subBuilder: PaginatedTableRenderer.create)
    ..hasRequiredFields = false
  ;

  ItemSectionContent._() : super();
  factory ItemSectionContent() => create();
  factory ItemSectionContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemSectionContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemSectionContent clone() => ItemSectionContent()..mergeFromMessage(this);
  ItemSectionContent copyWith(void Function(ItemSectionContent) updates) => super.copyWith((message) => updates(message as ItemSectionContent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemSectionContent create() => ItemSectionContent._();
  ItemSectionContent createEmptyInstance() => create();
  static $pb.PbList<ItemSectionContent> createRepeated() => $pb.PbList<ItemSectionContent>();
  static ItemSectionContent getDefault() => _defaultInstance ??= create()..freeze();
  static ItemSectionContent _defaultInstance;

  CompactNewsRenderer get compactNewsRenderer => $_getN(0);
  set compactNewsRenderer(CompactNewsRenderer v) { setField(1, v); }
  $core.bool hasCompactNewsRenderer() => $_has(0);
  void clearCompactNewsRenderer() => clearField(1);

  SpinnerRenderer get spinnerRenderer => $_getN(1);
  set spinnerRenderer(SpinnerRenderer v) { setField(2, v); }
  $core.bool hasSpinnerRenderer() => $_has(1);
  void clearSpinnerRenderer() => clearField(2);

  NewsMetadataRenderer get newsMetadataRenderer => $_getN(2);
  set newsMetadataRenderer(NewsMetadataRenderer v) { setField(3, v); }
  $core.bool hasNewsMetadataRenderer() => $_has(2);
  void clearNewsMetadataRenderer() => clearField(3);

  NewsOwnerRenderer get newsOwnerRenderer => $_getN(3);
  set newsOwnerRenderer(NewsOwnerRenderer v) { setField(4, v); }
  $core.bool hasNewsOwnerRenderer() => $_has(3);
  void clearNewsOwnerRenderer() => clearField(4);

  NewsContentRenderer get newsContentRenderer => $_getN(4);
  set newsContentRenderer(NewsContentRenderer v) { setField(5, v); }
  $core.bool hasNewsContentRenderer() => $_has(4);
  void clearNewsContentRenderer() => clearField(5);

  PaginatedTableRenderer get paginatedTableRenderer => $_getN(5);
  set paginatedTableRenderer(PaginatedTableRenderer v) { setField(6, v); }
  $core.bool hasPaginatedTableRenderer() => $_has(5);
  void clearPaginatedTableRenderer() => clearField(6);
}

class ItemSectionRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemSectionRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..pc<ItemSectionContent>(1, 'contents', $pb.PbFieldType.PM, subBuilder: ItemSectionContent.create)
    ..pc<Continuation>(2, 'continuations', $pb.PbFieldType.PM, subBuilder: Continuation.create)
    ..aOS(3, 'trackingParams', protoName: 'trackingParams')
    ..hasRequiredFields = false
  ;

  ItemSectionRenderer._() : super();
  factory ItemSectionRenderer() => create();
  factory ItemSectionRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemSectionRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemSectionRenderer clone() => ItemSectionRenderer()..mergeFromMessage(this);
  ItemSectionRenderer copyWith(void Function(ItemSectionRenderer) updates) => super.copyWith((message) => updates(message as ItemSectionRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemSectionRenderer create() => ItemSectionRenderer._();
  ItemSectionRenderer createEmptyInstance() => create();
  static $pb.PbList<ItemSectionRenderer> createRepeated() => $pb.PbList<ItemSectionRenderer>();
  static ItemSectionRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static ItemSectionRenderer _defaultInstance;

  $core.List<ItemSectionContent> get contents => $_getList(0);

  $core.List<Continuation> get continuations => $_getList(1);

  $core.String get trackingParams => $_getS(2, '');
  set trackingParams($core.String v) { $_setString(2, v); }
  $core.bool hasTrackingParams() => $_has(2);
  void clearTrackingParams() => clearField(3);
}

class SectionListContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SectionListContent', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<ItemSectionRenderer>(1, 'itemSectionRenderer', $pb.PbFieldType.OM, protoName: 'itemSectionRenderer', defaultOrMaker: ItemSectionRenderer.getDefault, subBuilder: ItemSectionRenderer.create)
    ..hasRequiredFields = false
  ;

  SectionListContent._() : super();
  factory SectionListContent() => create();
  factory SectionListContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SectionListContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SectionListContent clone() => SectionListContent()..mergeFromMessage(this);
  SectionListContent copyWith(void Function(SectionListContent) updates) => super.copyWith((message) => updates(message as SectionListContent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SectionListContent create() => SectionListContent._();
  SectionListContent createEmptyInstance() => create();
  static $pb.PbList<SectionListContent> createRepeated() => $pb.PbList<SectionListContent>();
  static SectionListContent getDefault() => _defaultInstance ??= create()..freeze();
  static SectionListContent _defaultInstance;

  ItemSectionRenderer get itemSectionRenderer => $_getN(0);
  set itemSectionRenderer(ItemSectionRenderer v) { setField(1, v); }
  $core.bool hasItemSectionRenderer() => $_has(0);
  void clearItemSectionRenderer() => clearField(1);
}

class ItemSectionContinuation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ItemSectionContinuation', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..pc<ItemSectionContent>(1, 'contents', $pb.PbFieldType.PM, subBuilder: ItemSectionContent.create)
    ..pc<Continuation>(2, 'continuations', $pb.PbFieldType.PM, subBuilder: Continuation.create)
    ..aOS(3, 'trackingParams', protoName: 'trackingParams')
    ..hasRequiredFields = false
  ;

  ItemSectionContinuation._() : super();
  factory ItemSectionContinuation() => create();
  factory ItemSectionContinuation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemSectionContinuation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ItemSectionContinuation clone() => ItemSectionContinuation()..mergeFromMessage(this);
  ItemSectionContinuation copyWith(void Function(ItemSectionContinuation) updates) => super.copyWith((message) => updates(message as ItemSectionContinuation));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemSectionContinuation create() => ItemSectionContinuation._();
  ItemSectionContinuation createEmptyInstance() => create();
  static $pb.PbList<ItemSectionContinuation> createRepeated() => $pb.PbList<ItemSectionContinuation>();
  static ItemSectionContinuation getDefault() => _defaultInstance ??= create()..freeze();
  static ItemSectionContinuation _defaultInstance;

  $core.List<ItemSectionContent> get contents => $_getList(0);

  $core.List<Continuation> get continuations => $_getList(1);

  $core.String get trackingParams => $_getS(2, '');
  set trackingParams($core.String v) { $_setString(2, v); }
  $core.bool hasTrackingParams() => $_has(2);
  void clearTrackingParams() => clearField(3);
}

class SectionListRenderer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SectionListRenderer', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..pc<SectionListContent>(1, 'contents', $pb.PbFieldType.PM, subBuilder: SectionListContent.create)
    ..hasRequiredFields = false
  ;

  SectionListRenderer._() : super();
  factory SectionListRenderer() => create();
  factory SectionListRenderer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SectionListRenderer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SectionListRenderer clone() => SectionListRenderer()..mergeFromMessage(this);
  SectionListRenderer copyWith(void Function(SectionListRenderer) updates) => super.copyWith((message) => updates(message as SectionListRenderer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SectionListRenderer create() => SectionListRenderer._();
  SectionListRenderer createEmptyInstance() => create();
  static $pb.PbList<SectionListRenderer> createRepeated() => $pb.PbList<SectionListRenderer>();
  static SectionListRenderer getDefault() => _defaultInstance ??= create()..freeze();
  static SectionListRenderer _defaultInstance;

  $core.List<SectionListContent> get contents => $_getList(0);
}

class BrowseEndpoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BrowseEndpoint', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..aOS(1, 'browseId', protoName: 'browseId')
    ..aOS(2, 'type')
    ..hasRequiredFields = false
  ;

  BrowseEndpoint._() : super();
  factory BrowseEndpoint() => create();
  factory BrowseEndpoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BrowseEndpoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BrowseEndpoint clone() => BrowseEndpoint()..mergeFromMessage(this);
  BrowseEndpoint copyWith(void Function(BrowseEndpoint) updates) => super.copyWith((message) => updates(message as BrowseEndpoint));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BrowseEndpoint create() => BrowseEndpoint._();
  BrowseEndpoint createEmptyInstance() => create();
  static $pb.PbList<BrowseEndpoint> createRepeated() => $pb.PbList<BrowseEndpoint>();
  static BrowseEndpoint getDefault() => _defaultInstance ??= create()..freeze();
  static BrowseEndpoint _defaultInstance;

  $core.String get browseId => $_getS(0, '');
  set browseId($core.String v) { $_setString(0, v); }
  $core.bool hasBrowseId() => $_has(0);
  void clearBrowseId() => clearField(1);

  $core.String get type => $_getS(1, '');
  set type($core.String v) { $_setString(1, v); }
  $core.bool hasType() => $_has(1);
  void clearType() => clearField(2);
}

class WatchEndpoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WatchEndpoint', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..aOS(1, 'watchId', protoName: 'watchId')
    ..aOS(2, 'type')
    ..hasRequiredFields = false
  ;

  WatchEndpoint._() : super();
  factory WatchEndpoint() => create();
  factory WatchEndpoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchEndpoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WatchEndpoint clone() => WatchEndpoint()..mergeFromMessage(this);
  WatchEndpoint copyWith(void Function(WatchEndpoint) updates) => super.copyWith((message) => updates(message as WatchEndpoint));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchEndpoint create() => WatchEndpoint._();
  WatchEndpoint createEmptyInstance() => create();
  static $pb.PbList<WatchEndpoint> createRepeated() => $pb.PbList<WatchEndpoint>();
  static WatchEndpoint getDefault() => _defaultInstance ??= create()..freeze();
  static WatchEndpoint _defaultInstance;

  $core.String get watchId => $_getS(0, '');
  set watchId($core.String v) { $_setString(0, v); }
  $core.bool hasWatchId() => $_has(0);
  void clearWatchId() => clearField(1);

  $core.String get type => $_getS(1, '');
  set type($core.String v) { $_setString(1, v); }
  $core.bool hasType() => $_has(1);
  void clearType() => clearField(2);
}

class NavigationRequestContextClient extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NavigationRequestContextClient', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..aOS(1, 'appId', protoName: 'appId')
    ..aOS(2, 'appVersion', protoName: 'appVersion')
    ..hasRequiredFields = false
  ;

  NavigationRequestContextClient._() : super();
  factory NavigationRequestContextClient() => create();
  factory NavigationRequestContextClient.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NavigationRequestContextClient.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NavigationRequestContextClient clone() => NavigationRequestContextClient()..mergeFromMessage(this);
  NavigationRequestContextClient copyWith(void Function(NavigationRequestContextClient) updates) => super.copyWith((message) => updates(message as NavigationRequestContextClient));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NavigationRequestContextClient create() => NavigationRequestContextClient._();
  NavigationRequestContextClient createEmptyInstance() => create();
  static $pb.PbList<NavigationRequestContextClient> createRepeated() => $pb.PbList<NavigationRequestContextClient>();
  static NavigationRequestContextClient getDefault() => _defaultInstance ??= create()..freeze();
  static NavigationRequestContextClient _defaultInstance;

  $core.String get appId => $_getS(0, '');
  set appId($core.String v) { $_setString(0, v); }
  $core.bool hasAppId() => $_has(0);
  void clearAppId() => clearField(1);

  $core.String get appVersion => $_getS(1, '');
  set appVersion($core.String v) { $_setString(1, v); }
  $core.bool hasAppVersion() => $_has(1);
  void clearAppVersion() => clearField(2);
}

class NavigationRequestContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NavigationRequestContext', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<NavigationRequestContextClient>(1, 'client', $pb.PbFieldType.OM, defaultOrMaker: NavigationRequestContextClient.getDefault, subBuilder: NavigationRequestContextClient.create)
    ..hasRequiredFields = false
  ;

  NavigationRequestContext._() : super();
  factory NavigationRequestContext() => create();
  factory NavigationRequestContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NavigationRequestContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NavigationRequestContext clone() => NavigationRequestContext()..mergeFromMessage(this);
  NavigationRequestContext copyWith(void Function(NavigationRequestContext) updates) => super.copyWith((message) => updates(message as NavigationRequestContext));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NavigationRequestContext create() => NavigationRequestContext._();
  NavigationRequestContext createEmptyInstance() => create();
  static $pb.PbList<NavigationRequestContext> createRepeated() => $pb.PbList<NavigationRequestContext>();
  static NavigationRequestContext getDefault() => _defaultInstance ??= create()..freeze();
  static NavigationRequestContext _defaultInstance;

  NavigationRequestContextClient get client => $_getN(0);
  set client(NavigationRequestContextClient v) { setField(1, v); }
  $core.bool hasClient() => $_has(0);
  void clearClient() => clearField(1);
}

class NavigationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NavigationRequest', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<NavigationEndpoint>(1, 'navigationEndpoint', $pb.PbFieldType.OM, protoName: 'navigationEndpoint', defaultOrMaker: NavigationEndpoint.getDefault, subBuilder: NavigationEndpoint.create)
    ..a<NavigationRequestContext>(2, 'context', $pb.PbFieldType.OM, defaultOrMaker: NavigationRequestContext.getDefault, subBuilder: NavigationRequestContext.create)
    ..aOS(3, 'continuation')
    ..hasRequiredFields = false
  ;

  NavigationRequest._() : super();
  factory NavigationRequest() => create();
  factory NavigationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NavigationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NavigationRequest clone() => NavigationRequest()..mergeFromMessage(this);
  NavigationRequest copyWith(void Function(NavigationRequest) updates) => super.copyWith((message) => updates(message as NavigationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NavigationRequest create() => NavigationRequest._();
  NavigationRequest createEmptyInstance() => create();
  static $pb.PbList<NavigationRequest> createRepeated() => $pb.PbList<NavigationRequest>();
  static NavigationRequest getDefault() => _defaultInstance ??= create()..freeze();
  static NavigationRequest _defaultInstance;

  NavigationEndpoint get navigationEndpoint => $_getN(0);
  set navigationEndpoint(NavigationEndpoint v) { setField(1, v); }
  $core.bool hasNavigationEndpoint() => $_has(0);
  void clearNavigationEndpoint() => clearField(1);

  NavigationRequestContext get context => $_getN(1);
  set context(NavigationRequestContext v) { setField(2, v); }
  $core.bool hasContext() => $_has(1);
  void clearContext() => clearField(2);

  $core.String get continuation => $_getS(2, '');
  set continuation($core.String v) { $_setString(2, v); }
  $core.bool hasContinuation() => $_has(2);
  void clearContinuation() => clearField(3);
}

class NavigationResponseContinuationContents extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NavigationResponseContinuationContents', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<ItemSectionContinuation>(1, 'itemSectionContinuation', $pb.PbFieldType.OM, protoName: 'itemSectionContinuation', defaultOrMaker: ItemSectionContinuation.getDefault, subBuilder: ItemSectionContinuation.create)
    ..hasRequiredFields = false
  ;

  NavigationResponseContinuationContents._() : super();
  factory NavigationResponseContinuationContents() => create();
  factory NavigationResponseContinuationContents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NavigationResponseContinuationContents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NavigationResponseContinuationContents clone() => NavigationResponseContinuationContents()..mergeFromMessage(this);
  NavigationResponseContinuationContents copyWith(void Function(NavigationResponseContinuationContents) updates) => super.copyWith((message) => updates(message as NavigationResponseContinuationContents));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NavigationResponseContinuationContents create() => NavigationResponseContinuationContents._();
  NavigationResponseContinuationContents createEmptyInstance() => create();
  static $pb.PbList<NavigationResponseContinuationContents> createRepeated() => $pb.PbList<NavigationResponseContinuationContents>();
  static NavigationResponseContinuationContents getDefault() => _defaultInstance ??= create()..freeze();
  static NavigationResponseContinuationContents _defaultInstance;

  ItemSectionContinuation get itemSectionContinuation => $_getN(0);
  set itemSectionContinuation(ItemSectionContinuation v) { setField(1, v); }
  $core.bool hasItemSectionContinuation() => $_has(0);
  void clearItemSectionContinuation() => clearField(1);
}

class NavigationResponseContents extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NavigationResponseContents', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<SectionListRenderer>(1, 'sectionListRenderer', $pb.PbFieldType.OM, protoName: 'sectionListRenderer', defaultOrMaker: SectionListRenderer.getDefault, subBuilder: SectionListRenderer.create)
    ..hasRequiredFields = false
  ;

  NavigationResponseContents._() : super();
  factory NavigationResponseContents() => create();
  factory NavigationResponseContents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NavigationResponseContents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NavigationResponseContents clone() => NavigationResponseContents()..mergeFromMessage(this);
  NavigationResponseContents copyWith(void Function(NavigationResponseContents) updates) => super.copyWith((message) => updates(message as NavigationResponseContents));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NavigationResponseContents create() => NavigationResponseContents._();
  NavigationResponseContents createEmptyInstance() => create();
  static $pb.PbList<NavigationResponseContents> createRepeated() => $pb.PbList<NavigationResponseContents>();
  static NavigationResponseContents getDefault() => _defaultInstance ??= create()..freeze();
  static NavigationResponseContents _defaultInstance;

  SectionListRenderer get sectionListRenderer => $_getN(0);
  set sectionListRenderer(SectionListRenderer v) { setField(1, v); }
  $core.bool hasSectionListRenderer() => $_has(0);
  void clearSectionListRenderer() => clearField(1);
}

class NavigationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NavigationResponse', package: const $pb.PackageName('navigation'), createEmptyInstance: create)
    ..a<NavigationResponseContents>(1, 'contents', $pb.PbFieldType.OM, defaultOrMaker: NavigationResponseContents.getDefault, subBuilder: NavigationResponseContents.create)
    ..a<NavigationResponseContinuationContents>(2, 'continuationContents', $pb.PbFieldType.OM, protoName: 'continuationContents', defaultOrMaker: NavigationResponseContinuationContents.getDefault, subBuilder: NavigationResponseContinuationContents.create)
    ..hasRequiredFields = false
  ;

  NavigationResponse._() : super();
  factory NavigationResponse() => create();
  factory NavigationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NavigationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  NavigationResponse clone() => NavigationResponse()..mergeFromMessage(this);
  NavigationResponse copyWith(void Function(NavigationResponse) updates) => super.copyWith((message) => updates(message as NavigationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NavigationResponse create() => NavigationResponse._();
  NavigationResponse createEmptyInstance() => create();
  static $pb.PbList<NavigationResponse> createRepeated() => $pb.PbList<NavigationResponse>();
  static NavigationResponse getDefault() => _defaultInstance ??= create()..freeze();
  static NavigationResponse _defaultInstance;

  NavigationResponseContents get contents => $_getN(0);
  set contents(NavigationResponseContents v) { setField(1, v); }
  $core.bool hasContents() => $_has(0);
  void clearContents() => clearField(1);

  NavigationResponseContinuationContents get continuationContents => $_getN(1);
  set continuationContents(NavigationResponseContinuationContents v) { setField(2, v); }
  $core.bool hasContinuationContents() => $_has(1);
  void clearContinuationContents() => clearField(2);
}


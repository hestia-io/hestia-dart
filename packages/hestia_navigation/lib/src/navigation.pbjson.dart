///
//  Generated code. Do not modify.
//  source: navigation.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const IconRenderer$json = const {
  '1': 'IconRenderer',
  '2': const [
    const {'1': 'iconType', '3': 1, '4': 1, '5': 9, '10': 'iconType'},
  ],
};

const Run$json = const {
  '1': 'Run',
  '2': const [
    const {'1': 'navigationEndpoint', '3': 1, '4': 1, '5': 11, '6': '.navigation.NavigationEndpoint', '10': 'navigationEndpoint'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

const Runs$json = const {
  '1': 'Runs',
  '2': const [
    const {'1': 'runs', '3': 1, '4': 3, '5': 11, '6': '.navigation.Run', '10': 'runs'},
  ],
};

const Thumbnail$json = const {
  '1': 'Thumbnail',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'width', '3': 2, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 3, '4': 1, '5': 5, '10': 'height'},
  ],
};

const Thumbnails$json = const {
  '1': 'Thumbnails',
  '2': const [
    const {'1': 'normal', '3': 1, '4': 1, '5': 11, '6': '.navigation.Thumbnail', '10': 'normal'},
    const {'1': 'medium', '3': 2, '4': 1, '5': 11, '6': '.navigation.Thumbnail', '10': 'medium'},
  ],
};

const NavigationEndpoint$json = const {
  '1': 'NavigationEndpoint',
  '2': const [
    const {'1': 'browseEndpoint', '3': 1, '4': 1, '5': 11, '6': '.navigation.BrowseEndpoint', '10': 'browseEndpoint'},
    const {'1': 'watchEndpoint', '3': 2, '4': 1, '5': 11, '6': '.navigation.WatchEndpoint', '10': 'watchEndpoint'},
    const {'1': 'clickTrackingParams', '3': 3, '4': 1, '5': 9, '10': 'clickTrackingParams'},
  ],
};

const NextContinuationData$json = const {
  '1': 'NextContinuationData',
  '2': const [
    const {'1': 'clickTrackingParams', '3': 1, '4': 1, '5': 9, '10': 'clickTrackingParams'},
    const {'1': 'continuation', '3': 2, '4': 1, '5': 9, '10': 'continuation'},
  ],
};

const Continuation$json = const {
  '1': 'Continuation',
  '2': const [
    const {'1': 'nextContinuationData', '3': 1, '4': 1, '5': 11, '6': '.navigation.NextContinuationData', '10': 'nextContinuationData'},
  ],
};

const SpinnerRenderer$json = const {
  '1': 'SpinnerRenderer',
};

const CompactNewsRenderer$json = const {
  '1': 'CompactNewsRenderer',
  '2': const [
    const {'1': 'navigationEndpoint', '3': 1, '4': 1, '5': 11, '6': '.navigation.NavigationEndpoint', '10': 'navigationEndpoint'},
    const {'1': 'title', '3': 2, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'title'},
    const {'1': 'shortByline', '3': 3, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'shortByline'},
    const {'1': 'thumbnails', '3': 4, '4': 3, '5': 11, '6': '.navigation.Thumbnails', '10': 'thumbnails'},
    const {'1': 'trackingParams', '3': 5, '4': 1, '5': 9, '10': 'trackingParams'},
  ],
};

const NewsMetadataRenderer$json = const {
  '1': 'NewsMetadataRenderer',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'title'},
  ],
};

const NewsOwnerRenderer$json = const {
  '1': 'NewsOwnerRenderer',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'title'},
    const {'1': 'thumbnail', '3': 2, '4': 1, '5': 11, '6': '.navigation.Thumbnails', '10': 'thumbnail'},
    const {'1': 'subscriberCountText', '3': 3, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'subscriberCountText'},
  ],
};

const NewsContent$json = const {
  '1': 'NewsContent',
  '2': const [
    const {'1': 'longText', '3': 1, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'longText'},
    const {'1': 'thumbnail', '3': 2, '4': 1, '5': 11, '6': '.navigation.Thumbnail', '10': 'thumbnail'},
  ],
};

const NewsContentRenderer$json = const {
  '1': 'NewsContentRenderer',
  '2': const [
    const {'1': 'contents', '3': 1, '4': 3, '5': 11, '6': '.navigation.NewsContent', '10': 'contents'},
  ],
};

const EditButtonRenderer$json = const {
  '1': 'EditButtonRenderer',
  '2': const [
    const {'1': 'buttonText', '3': 1, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'buttonText'},
  ],
};

const EditButton$json = const {
  '1': 'EditButton',
  '2': const [
    const {'1': 'editButtonRenderer', '3': 1, '4': 1, '5': 11, '6': '.navigation.EditButtonRenderer', '10': 'editButtonRenderer'},
  ],
};

const TableColumnContent$json = const {
  '1': 'TableColumnContent',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'text'},
    const {'1': 'icon', '3': 2, '4': 1, '5': 11, '6': '.navigation.IconRenderer', '10': 'icon'},
  ],
};

const TableColumnRenderer$json = const {
  '1': 'TableColumnRenderer',
  '2': const [
    const {'1': 'contents', '3': 1, '4': 3, '5': 11, '6': '.navigation.TableColumnContent', '10': 'contents'},
  ],
};

const TableRowRenderer$json = const {
  '1': 'TableRowRenderer',
  '2': const [
    const {'1': 'cells', '3': 1, '4': 3, '5': 11, '6': '.navigation.TableCellRenderer', '10': 'cells'},
  ],
};

const ChipRenderer$json = const {
  '1': 'ChipRenderer',
  '2': const [
    const {'1': 'label', '3': 1, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'label'},
  ],
};

const TableCellContent$json = const {
  '1': 'TableCellContent',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 11, '6': '.navigation.Runs', '10': 'text'},
    const {'1': 'icon', '3': 2, '4': 1, '5': 11, '6': '.navigation.IconRenderer', '10': 'icon'},
    const {'1': 'thumbnail', '3': 3, '4': 1, '5': 11, '6': '.navigation.Thumbnails', '10': 'thumbnail'},
    const {'1': 'chip', '3': 4, '4': 1, '5': 11, '6': '.navigation.ChipRenderer', '10': 'chip'},
  ],
};

const TableCellRenderer$json = const {
  '1': 'TableCellRenderer',
  '2': const [
    const {'1': 'contents', '3': 1, '4': 3, '5': 11, '6': '.navigation.TableCellContent', '10': 'contents'},
    const {'1': 'showEditIcon', '3': 2, '4': 1, '5': 8, '10': 'showEditIcon'},
  ],
};

const PaginatedTableRenderer$json = const {
  '1': 'PaginatedTableRenderer',
  '2': const [
    const {'1': 'columns', '3': 1, '4': 3, '5': 11, '6': '.navigation.TableColumnRenderer', '10': 'columns'},
    const {'1': 'rows', '3': 2, '4': 3, '5': 11, '6': '.navigation.TableRowRenderer', '10': 'rows'},
  ],
};

const ItemSectionContent$json = const {
  '1': 'ItemSectionContent',
  '2': const [
    const {'1': 'compactNewsRenderer', '3': 1, '4': 1, '5': 11, '6': '.navigation.CompactNewsRenderer', '10': 'compactNewsRenderer'},
    const {'1': 'spinnerRenderer', '3': 2, '4': 1, '5': 11, '6': '.navigation.SpinnerRenderer', '10': 'spinnerRenderer'},
    const {'1': 'newsMetadataRenderer', '3': 3, '4': 1, '5': 11, '6': '.navigation.NewsMetadataRenderer', '10': 'newsMetadataRenderer'},
    const {'1': 'newsOwnerRenderer', '3': 4, '4': 1, '5': 11, '6': '.navigation.NewsOwnerRenderer', '10': 'newsOwnerRenderer'},
    const {'1': 'newsContentRenderer', '3': 5, '4': 1, '5': 11, '6': '.navigation.NewsContentRenderer', '10': 'newsContentRenderer'},
    const {'1': 'paginatedTableRenderer', '3': 6, '4': 1, '5': 11, '6': '.navigation.PaginatedTableRenderer', '10': 'paginatedTableRenderer'},
  ],
};

const ItemSectionRenderer$json = const {
  '1': 'ItemSectionRenderer',
  '2': const [
    const {'1': 'contents', '3': 1, '4': 3, '5': 11, '6': '.navigation.ItemSectionContent', '10': 'contents'},
    const {'1': 'continuations', '3': 2, '4': 3, '5': 11, '6': '.navigation.Continuation', '10': 'continuations'},
    const {'1': 'trackingParams', '3': 3, '4': 1, '5': 9, '10': 'trackingParams'},
  ],
};

const SectionListContent$json = const {
  '1': 'SectionListContent',
  '2': const [
    const {'1': 'itemSectionRenderer', '3': 1, '4': 1, '5': 11, '6': '.navigation.ItemSectionRenderer', '10': 'itemSectionRenderer'},
  ],
};

const ItemSectionContinuation$json = const {
  '1': 'ItemSectionContinuation',
  '2': const [
    const {'1': 'contents', '3': 1, '4': 3, '5': 11, '6': '.navigation.ItemSectionContent', '10': 'contents'},
    const {'1': 'continuations', '3': 2, '4': 3, '5': 11, '6': '.navigation.Continuation', '10': 'continuations'},
    const {'1': 'trackingParams', '3': 3, '4': 1, '5': 9, '10': 'trackingParams'},
  ],
};

const SectionListRenderer$json = const {
  '1': 'SectionListRenderer',
  '2': const [
    const {'1': 'contents', '3': 1, '4': 3, '5': 11, '6': '.navigation.SectionListContent', '10': 'contents'},
  ],
};

const BrowseEndpoint$json = const {
  '1': 'BrowseEndpoint',
  '2': const [
    const {'1': 'browseId', '3': 1, '4': 1, '5': 9, '10': 'browseId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
};

const WatchEndpoint$json = const {
  '1': 'WatchEndpoint',
  '2': const [
    const {'1': 'watchId', '3': 1, '4': 1, '5': 9, '10': 'watchId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
};

const NavigationRequestContextClient$json = const {
  '1': 'NavigationRequestContextClient',
  '2': const [
    const {'1': 'appId', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'appVersion', '3': 2, '4': 1, '5': 9, '10': 'appVersion'},
  ],
};

const NavigationRequestContext$json = const {
  '1': 'NavigationRequestContext',
  '2': const [
    const {'1': 'client', '3': 1, '4': 1, '5': 11, '6': '.navigation.NavigationRequestContextClient', '10': 'client'},
  ],
};

const NavigationRequest$json = const {
  '1': 'NavigationRequest',
  '2': const [
    const {'1': 'navigationEndpoint', '3': 1, '4': 1, '5': 11, '6': '.navigation.NavigationEndpoint', '10': 'navigationEndpoint'},
    const {'1': 'context', '3': 2, '4': 1, '5': 11, '6': '.navigation.NavigationRequestContext', '10': 'context'},
    const {'1': 'continuation', '3': 3, '4': 1, '5': 9, '10': 'continuation'},
  ],
};

const NavigationResponseContinuationContents$json = const {
  '1': 'NavigationResponseContinuationContents',
  '2': const [
    const {'1': 'itemSectionContinuation', '3': 1, '4': 1, '5': 11, '6': '.navigation.ItemSectionContinuation', '10': 'itemSectionContinuation'},
  ],
};

const NavigationResponseContents$json = const {
  '1': 'NavigationResponseContents',
  '2': const [
    const {'1': 'sectionListRenderer', '3': 1, '4': 1, '5': 11, '6': '.navigation.SectionListRenderer', '10': 'sectionListRenderer'},
  ],
};

const NavigationResponse$json = const {
  '1': 'NavigationResponse',
  '2': const [
    const {'1': 'contents', '3': 1, '4': 1, '5': 11, '6': '.navigation.NavigationResponseContents', '10': 'contents'},
    const {'1': 'continuationContents', '3': 2, '4': 1, '5': 11, '6': '.navigation.NavigationResponseContinuationContents', '10': 'continuationContents'},
  ],
};


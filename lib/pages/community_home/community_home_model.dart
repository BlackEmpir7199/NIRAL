import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'community_home_widget.dart' show CommunityHomeWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CommunityHomeModel extends FlutterFlowModel<CommunityHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for GroupSearcher widget.
  FocusNode? groupSearcherFocusNode;
  TextEditingController? groupSearcherController;
  String? Function(BuildContext, String?)? groupSearcherControllerValidator;
  List<SupportGroupsRecord> simpleSearchResults = [];
  // State field(s) for NoSearch widget.

  PagingController<DocumentSnapshot?, SupportGroupsRecord>?
      noSearchPagingController;
  Query? noSearchPagingQuery;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    groupSearcherFocusNode?.dispose();
    groupSearcherController?.dispose();

    noSearchPagingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<DocumentSnapshot?, SupportGroupsRecord>
      setNoSearchController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    noSearchPagingController ??= _createNoSearchController(query, parent);
    if (noSearchPagingQuery != query) {
      noSearchPagingQuery = query;
      noSearchPagingController?.refresh();
    }
    return noSearchPagingController!;
  }

  PagingController<DocumentSnapshot?, SupportGroupsRecord>
      _createNoSearchController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, SupportGroupsRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => querySupportGroupsRecordPage(
          queryBuilder: (_) => noSearchPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 25,
          isStream: false,
        ),
      );
  }
}

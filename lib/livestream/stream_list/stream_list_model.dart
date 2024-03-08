import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'stream_list_widget.dart' show StreamListWidget;
import 'package:flutter/material.dart';

class StreamListModel extends FlutterFlowModel<StreamListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getLiveStream)] action in listContainer widget.
  ApiCallResponse? livestreamID;
  // Stores action output result for [Backend Call - API (getPastLiveStream)] action in listContainer widget.
  ApiCallResponse? apiResultix4;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

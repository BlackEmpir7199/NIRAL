import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'livestreamer_widget.dart' show LivestreamerWidget;
import 'package:flutter/material.dart';

class LivestreamerModel extends FlutterFlowModel<LivestreamerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in MuxBroadcast widget.
  StreamsRecord? createdDocs;

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

import '/components/resources_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'support_hub_widget.dart' show SupportHubWidget;
import 'package:flutter/material.dart';

class SupportHubModel extends FlutterFlowModel<SupportHubWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Resources component.
  late ResourcesModel resourcesModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    resourcesModel = createModel(context, () => ResourcesModel());
  }

  @override
  void dispose() {
    resourcesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

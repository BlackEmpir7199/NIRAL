import '/components/upcoming_counselling_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'therapist_home_page_widget.dart' show TherapistHomePageWidget;
import 'package:flutter/material.dart';

class TherapistHomePageModel extends FlutterFlowModel<TherapistHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for UpcomingCounselling component.
  late UpcomingCounsellingModel upcomingCounsellingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    upcomingCounsellingModel =
        createModel(context, () => UpcomingCounsellingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    upcomingCounsellingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

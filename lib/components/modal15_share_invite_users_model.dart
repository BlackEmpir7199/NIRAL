import '/flutter_flow/flutter_flow_util.dart';
import 'modal15_share_invite_users_widget.dart'
    show Modal15ShareInviteUsersWidget;
import 'package:flutter/material.dart';

class Modal15ShareInviteUsersModel
    extends FlutterFlowModel<Modal15ShareInviteUsersWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

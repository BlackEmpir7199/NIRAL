import '/flutter_flow/flutter_flow_util.dart';
import 'account_auth_create_widget.dart' show AccountAuthCreateWidget;
import 'package:flutter/material.dart';

class AccountAuthCreateModel extends FlutterFlowModel<AccountAuthCreateWidget> {
  ///  Local state fields for this page.

  String sIgnUpLogin = 'Sign Up with';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;

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

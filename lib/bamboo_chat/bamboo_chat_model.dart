import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/bamboo_reply_widget.dart';
import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bamboo_chat_widget.dart' show BambooChatWidget;
import 'package:flutter/material.dart';

class BambooChatModel extends FlutterFlowModel<BambooChatWidget> {
  ///  Local state fields for this page.

  bool isPetClicked = false;

  DocumentReference? geminiChatSession;

  String? geminiresp = '';

  String bambooreplyquote = 'I feel the rush in my sleep';

  String prompt = 'Hello';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in BambooChat widget.
  AICompanionChatsRecord? geminichatSession;
  // Model for BambooReply component.
  late BambooReplyModel bambooReplyModel1;
  // Model for BambooReply component.
  late BambooReplyModel bambooReplyModel2;
  // State field(s) for RiveAnimation widget.
  final riveAnimationAnimationsList1 = [
    'Close eye',
    'Idle',
    'Open eye',
  ];
  List<FlutterFlowRiveController> riveAnimationControllers1 = [];
  // State field(s) for RiveAnimation widget.
  final riveAnimationAnimationsList2 = [
    'Idle',
    'Open eye',
  ];
  List<FlutterFlowRiveController> riveAnimationControllers2 = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (gemini)] action in IconButton widget.
  ApiCallResponse? finalGemini;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    bambooReplyModel1 = createModel(context, () => BambooReplyModel());
    bambooReplyModel2 = createModel(context, () => BambooReplyModel());
    for (var name in riveAnimationAnimationsList1) {
      riveAnimationControllers1.add(FlutterFlowRiveController(
        name,
        shouldLoop: true,
      ));
    }

    for (var name in riveAnimationAnimationsList2) {
      riveAnimationControllers2.add(FlutterFlowRiveController(
        name,
        shouldLoop: true,
      ));
    }
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bambooReplyModel1.dispose();
    bambooReplyModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'acutal_home_widget.dart' show AcutalHomeWidget;
import 'package:flutter/material.dart';

class AcutalHomeModel extends FlutterFlowModel<AcutalHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RiveAnimation widget.
  final riveAnimationAnimationsList = [
    'Close eye',
    'Open eye',
    'Idle',
  ];
  List<FlutterFlowRiveController> riveAnimationControllers = [];
  // State field(s) for task1_completed widget.
  bool? task1CompletedValue;
  // State field(s) for task2_completed widget.
  bool? task2CompletedValue;
  // State field(s) for task3_completed widget.
  bool? task3CompletedValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    for (var name in riveAnimationAnimationsList) {
      riveAnimationControllers.add(FlutterFlowRiveController(
        name,
        shouldLoop: true,
      ));
    }
  }

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

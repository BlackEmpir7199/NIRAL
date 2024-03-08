import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_group_widget.dart' show CreateGroupWidget;
import 'package:flutter/material.dart';

class CreateGroupModel extends FlutterFlowModel<CreateGroupWidget> {
  ///  Local state fields for this component.

  int? interestNo = 0;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for GroupName widget.
  FocusNode? groupNameFocusNode;
  TextEditingController? groupNameController;
  String? Function(BuildContext, String?)? groupNameControllerValidator;
  String? _groupNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'oyazi4i8' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'i5bpex11' /* 2 */,
      );
    }
    if (val.length > 18) {
      return FFLocalizations.of(context).getText(
        '4she6szl' /* 18 */,
      );
    }

    return null;
  }

  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  String? _descriptionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'auwh4jip' /* Field is required */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'xskmjeki' /* 10 */,
      );
    }
    if (val.length > 100) {
      return FFLocalizations.of(context).getText(
        't8o3wq4r' /* 100 */,
      );
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for isNGO widget.
  bool? isNGOValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'oorcdq7c' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'tbnzquvq' /* 2 */,
      );
    }
    if (val.length > 25) {
      return FFLocalizations.of(context).getText(
        'rawpgget' /* 25 */,
      );
    }

    return null;
  }

  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioController;
  String? Function(BuildContext, String?)? myBioControllerValidator;
  String? _myBioControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'waznz36z' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return FFLocalizations.of(context).getText(
        'hojrtpvb' /* 2 */,
      );
    }
    if (val.length > 50) {
      return FFLocalizations.of(context).getText(
        'fsz760kh' /* 50 */,
      );
    }
    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '9qldjdse' /* The Given Link does not qualif... */,
      );
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SupportGroupsRecord? grprefer;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  GroupChatRecord? relGrpChat1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SupportGroupsRecord? grpRefer;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  GroupChatRecord? relGrpChat2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    groupNameControllerValidator = _groupNameControllerValidator;
    descriptionControllerValidator = _descriptionControllerValidator;
    textController3Validator = _textController3Validator;
    myBioControllerValidator = _myBioControllerValidator;
  }

  @override
  void dispose() {
    groupNameFocusNode?.dispose();
    groupNameController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();

    myBioFocusNode?.dispose();
    myBioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

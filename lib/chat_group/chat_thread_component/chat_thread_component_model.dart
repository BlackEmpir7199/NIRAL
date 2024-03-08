import '/backend/backend.dart';
import '/chat_group/chat_component_bg/chat_component_bg_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_thread_component_widget.dart' show ChatThreadComponentWidget;
import 'package:flutter/material.dart';

class ChatThreadComponentModel
    extends FlutterFlowModel<ChatThreadComponentWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> lastSeenBy = [];
  void addToLastSeenBy(DocumentReference item) => lastSeenBy.add(item);
  void removeFromLastSeenBy(DocumentReference item) => lastSeenBy.remove(item);
  void removeAtIndexFromLastSeenBy(int index) => lastSeenBy.removeAt(index);
  void insertAtIndexInLastSeenBy(int index, DocumentReference item) =>
      lastSeenBy.insert(index, item);
  void updateLastSeenByAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lastSeenBy[index] = updateFn(lastSeenBy[index]);

  List<String> imagesUploaded = [];
  void addToImagesUploaded(String item) => imagesUploaded.add(item);
  void removeFromImagesUploaded(String item) => imagesUploaded.remove(item);
  void removeAtIndexFromImagesUploaded(int index) =>
      imagesUploaded.removeAt(index);
  void insertAtIndexInImagesUploaded(int index, String item) =>
      imagesUploaded.insert(index, item);
  void updateImagesUploadedAtIndex(int index, Function(String) updateFn) =>
      imagesUploaded[index] = updateFn(imagesUploaded[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  List<GroupChatRecord>? listViewPreviousSnapshot;
  // Models for Chat_component_Bg dynamic component.
  late FlutterFlowDynamicModels<ChatComponentBgModel> chatComponentBgModels;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ChatField widget.
  FocusNode? chatFieldFocusNode;
  TextEditingController? chatFieldController;
  String? Function(BuildContext, String?)? chatFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    chatComponentBgModels =
        FlutterFlowDynamicModels(() => ChatComponentBgModel());
  }

  @override
  void dispose() {
    chatComponentBgModels.dispose();
    chatFieldFocusNode?.dispose();
    chatFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

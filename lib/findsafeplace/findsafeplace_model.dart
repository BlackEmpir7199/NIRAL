import '/components/places_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'findsafeplace_widget.dart' show FindsafeplaceWidget;
import 'package:flutter/material.dart';

class FindsafeplaceModel extends FlutterFlowModel<FindsafeplaceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PlacesCard component.
  late PlacesCardModel placesCardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    placesCardModel = createModel(context, () => PlacesCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    placesCardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

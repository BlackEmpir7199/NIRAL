import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pictures_page_model.dart';
export 'pictures_page_model.dart';

class PicturesPageWidget extends StatefulWidget {
  const PicturesPageWidget({super.key});

  @override
  State<PicturesPageWidget> createState() => _PicturesPageWidgetState();
}

class _PicturesPageWidgetState extends State<PicturesPageWidget> {
  late PicturesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PicturesPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'PicturesPage'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}

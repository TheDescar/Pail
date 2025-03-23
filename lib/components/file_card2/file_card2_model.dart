import '/flutter_flow/flutter_flow_util.dart';
import 'file_card2_widget.dart' show FileCard2Widget;
import 'package:flutter/material.dart';

class FileCard2Model extends FlutterFlowModel<FileCard2Widget> {
  ///  Local state fields for this component.

  int? visible = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

import '/components/file_card/file_card_widget.dart';
import '/components/file_card2/file_card2_widget.dart';
import '/components/file_card3/file_card3_widget.dart';
import '/components/folder_card/folder_card_widget.dart';
import '/components/nav_menu/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for FolderCard component.
  late FolderCardModel folderCardModel1;
  // Model for FolderCard component.
  late FolderCardModel folderCardModel2;
  // Model for FolderCard component.
  late FolderCardModel folderCardModel3;
  // Model for FolderCard component.
  late FolderCardModel folderCardModel4;
  // Model for FileCard2 component.
  late FileCard2Model fileCard2Model1;
  // Model for FileCard2 component.
  late FileCard2Model fileCard2Model2;
  // Model for FileCard2 component.
  late FileCard2Model fileCard2Model3;
  // Model for FileCard2 component.
  late FileCard2Model fileCard2Model4;
  // Model for FileCard3 component.
  late FileCard3Model fileCard3Model1;
  // Model for FileCard3 component.
  late FileCard3Model fileCard3Model2;
  // Model for FileCard3 component.
  late FileCard3Model fileCard3Model3;
  // Model for FileCard3 component.
  late FileCard3Model fileCard3Model4;
  // Model for FileCard component.
  late FileCardModel fileCardModel1;
  // Model for FileCard component.
  late FileCardModel fileCardModel2;
  // Model for FileCard component.
  late FileCardModel fileCardModel3;
  // Model for FileCard component.
  late FileCardModel fileCardModel4;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    folderCardModel1 = createModel(context, () => FolderCardModel());
    folderCardModel2 = createModel(context, () => FolderCardModel());
    folderCardModel3 = createModel(context, () => FolderCardModel());
    folderCardModel4 = createModel(context, () => FolderCardModel());
    fileCard2Model1 = createModel(context, () => FileCard2Model());
    fileCard2Model2 = createModel(context, () => FileCard2Model());
    fileCard2Model3 = createModel(context, () => FileCard2Model());
    fileCard2Model4 = createModel(context, () => FileCard2Model());
    fileCard3Model1 = createModel(context, () => FileCard3Model());
    fileCard3Model2 = createModel(context, () => FileCard3Model());
    fileCard3Model3 = createModel(context, () => FileCard3Model());
    fileCard3Model4 = createModel(context, () => FileCard3Model());
    fileCardModel1 = createModel(context, () => FileCardModel());
    fileCardModel2 = createModel(context, () => FileCardModel());
    fileCardModel3 = createModel(context, () => FileCardModel());
    fileCardModel4 = createModel(context, () => FileCardModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    folderCardModel1.dispose();
    folderCardModel2.dispose();
    folderCardModel3.dispose();
    folderCardModel4.dispose();
    fileCard2Model1.dispose();
    fileCard2Model2.dispose();
    fileCard2Model3.dispose();
    fileCard2Model4.dispose();
    fileCard3Model1.dispose();
    fileCard3Model2.dispose();
    fileCard3Model3.dispose();
    fileCard3Model4.dispose();
    fileCardModel1.dispose();
    fileCardModel2.dispose();
    fileCardModel3.dispose();
    fileCardModel4.dispose();
  }
}

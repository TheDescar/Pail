import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'folder_card_model.dart';
export 'folder_card_model.dart';

class FolderCardWidget extends StatefulWidget {
  const FolderCardWidget({
    super.key,
    required this.folderName,
    required this.folderSize,
    required this.folderFiles,
  });

  final String? folderName;
  final double? folderSize;
  final int? folderFiles;

  @override
  State<FolderCardWidget> createState() => _FolderCardWidgetState();
}

class _FolderCardWidgetState extends State<FolderCardWidget> {
  late FolderCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FolderCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/folder-icon.png',
                  width: 48.0,
                  height: 48.0,
                  fit: BoxFit.contain,
                ),
                Text(
                  valueOrDefault<String>(
                    widget.folderName,
                    'Folder',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Sans',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '${widget.folderSize?.toString()} GB',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Noto Sans',
                            color: FlutterFlowTheme.of(context).tertiaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Container(
                      width: 4.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      '${widget.folderFiles?.toString()} files',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Noto Sans',
                            color: FlutterFlowTheme.of(context).tertiaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(SizedBox(width: 6.0)),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  FFIcons.kstar,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 18.0,
                ),
                Icon(
                  FFIcons.kdotsVertical,
                  color: FlutterFlowTheme.of(context).alternate,
                  size: 18.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

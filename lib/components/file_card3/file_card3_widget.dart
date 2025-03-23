import '';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'file_card3_model.dart';
export 'file_card3_model.dart';

class FileCard3Widget extends StatefulWidget {
  const FileCard3Widget({
    super.key,
    required this.fileName,
    required this.fileIcon,
  });

  final String? fileName;
  final String? fileIcon;

  @override
  State<FileCard3Widget> createState() => _FileCard3WidgetState();
}

class _FileCard3WidgetState extends State<FileCard3Widget> {
  late FileCard3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FileCard3Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2500));
      _model.visible = 1;
      safeSetState(() {});
    });

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
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget.fileIcon!,
              width: 36.0,
              height: 36.0,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.fileName,
                    'na',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Sans',
                        letterSpacing: 0.0,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '2.5 MB',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Noto Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
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
                      '12 Dec 2022 8:00 PM',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Noto Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(SizedBox(width: 6.0)),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (_model.visible == 1)
                Icon(
                  Icons.close,
                  color: Color(0xFFE60B0B),
                  size: 30.0,
                ),
              Icon(
                FFIcons.kdotsVertical,
                color: FlutterFlowTheme.of(context).alternate,
                size: 18.0,
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ]
            .divide(SizedBox(width: 12.0))
            .addToStart(SizedBox(width: 12.0))
            .addToEnd(SizedBox(width: 12.0)),
      ),
    );
  }
}

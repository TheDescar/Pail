import '';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'file_card2_model.dart';
export 'file_card2_model.dart';

class FileCard2Widget extends StatefulWidget {
  const FileCard2Widget({
    super.key,
    required this.fileName,
    required this.fileIcon,
  });

  final String? fileName;
  final String? fileIcon;

  @override
  State<FileCard2Widget> createState() => _FileCard2WidgetState();
}

class _FileCard2WidgetState extends State<FileCard2Widget> {
  late FileCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FileCard2Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2500));
      _model.visible = 1;
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController(
        text:
            'b3c02a64343f6ef0b7ac11345fdcc52d3a4a68763b3c6f75c7278a6f6c5dcf21\n');
    _model.textFieldFocusNode ??= FocusNode();

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
                Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Noto Sans',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'TextField',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Noto Sans',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Sans',
                          letterSpacing: 0.0,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (_model.visible == 1)
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await launchURL(
                        'https://whatsonchain.com/block-height/889171');
                  },
                  child: Icon(
                    Icons.file_copy,
                    color: FlutterFlowTheme.of(context).alternate,
                    size: 24.0,
                  ),
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

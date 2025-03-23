import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_option_model.dart';
export 'menu_option_model.dart';

class MenuOptionWidget extends StatefulWidget {
  const MenuOptionWidget({
    super.key,
    required this.title,
    bool? active,
    required this.navigateAction,
    required this.activeIcon,
    required this.inactiveIcon,
  }) : this.active = active ?? false;

  final String? title;
  final bool active;
  final Future Function()? navigateAction;
  final Widget? activeIcon;
  final Widget? inactiveIcon;

  @override
  State<MenuOptionWidget> createState() => _MenuOptionWidgetState();
}

class _MenuOptionWidgetState extends State<MenuOptionWidget> {
  late MenuOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuOptionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        height: 48.0,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 5.0,
              height: double.infinity,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  widget.active
                      ? FlutterFlowTheme.of(context).primary
                      : Colors.transparent,
                  Colors.transparent,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(4.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await widget.navigateAction?.call();
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      widget.active || _model.mouseRegionHovered
                          ? FlutterFlowTheme.of(context).accent1
                          : Colors.transparent,
                      Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: valueOrDefault<Color>(
                        widget.active || _model.mouseRegionHovered
                            ? FlutterFlowTheme.of(context).lineColor
                            : Colors.transparent,
                        Colors.transparent,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Builder(
                        builder: (context) {
                          if (widget.active) {
                            return widget.activeIcon!;
                          } else {
                            return widget.inactiveIcon!;
                          }
                        },
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.title,
                          'Dashboard',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Noto Sans',
                              color: valueOrDefault<Color>(
                                widget.active
                                    ? FlutterFlowTheme.of(context)
                                        .primaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .secondaryText,
                                FlutterFlowTheme.of(context).tertiaryText,
                              ),
                              letterSpacing: 0.0,
                            ),
                      ),
                    ]
                        .divide(SizedBox(width: 12.0))
                        .addToStart(SizedBox(width: 12.0))
                        .addToEnd(SizedBox(width: 12.0)),
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(width: 8.0)).addToEnd(SizedBox(width: 12.0)),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}

import '/auth/firebase_auth/auth_util.dart';
import '/components/menu_option/menu_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'nav_menu_model.dart';
export 'nav_menu_model.dart';

class NavMenuWidget extends StatefulWidget {
  const NavMenuWidget({super.key});

  @override
  State<NavMenuWidget> createState() => _NavMenuWidgetState();
}

class _NavMenuWidgetState extends State<NavMenuWidget> {
  late NavMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavMenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 260.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/2-removebg-preview.png',
                    width: 300.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.menuOptionModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Dashboard',
                        active: FFAppState().activePage == 'Dashboard',
                        activeIcon: Icon(
                          FFIcons.klayoutGrid,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          FFIcons.klayoutGrid,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {
                          context.pushNamed(DashboardWidget.routeName);
                        },
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Internal Files',
                        active: FFAppState().activePage == 'Internal Files',
                        activeIcon: Icon(
                          FFIcons.kfileText,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          FFIcons.kfileText,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'State',
                        active: FFAppState().activePage == 'State',
                        activeIcon: Icon(
                          Icons.analytics_outlined,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          Icons.analytics_outlined,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Starred',
                        active: FFAppState().activePage == 'Starred',
                        activeIcon: Icon(
                          FFIcons.kstar,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          FFIcons.kstar,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Trash',
                        active: FFAppState().activePage == 'Trash',
                        activeIcon: Icon(
                          FFIcons.ktrash,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          FFIcons.ktrash,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {},
                      ),
                    ),
                  ].divide(SizedBox(height: 6.0)),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 24.0,
                  endIndent: 24.0,
                  color: FlutterFlowTheme.of(context).lineColor,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.menuOptionModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Help',
                        active: FFAppState().activePage == 'Help',
                        activeIcon: Icon(
                          FFIcons.kheadset,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          FFIcons.kheadset,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionModel7,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Community',
                        active: FFAppState().activePage == 'Community',
                        activeIcon: Icon(
                          FFIcons.ksend2,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          FFIcons.ksend2,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionModel8,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Settings',
                        active: FFAppState().activePage == 'Settings',
                        activeIcon: Icon(
                          FFIcons.ksettings,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          FFIcons.ksettings,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {},
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionModel9,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Logout',
                        active: FFAppState().activePage == 'Logout',
                        activeIcon: Icon(
                          FFIcons.klogout,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          FFIcons.klogout,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {
                          FFAppState().activePage = 'Logout';
                          safeSetState(() {});
                        },
                      ),
                    ),
                  ].divide(SizedBox(height: 6.0)),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 20.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth(
                                LoginWidget.routeName, context.mounted);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 42.0,
                                    height: 42.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .lineColor,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Icon(
                                      Icons.person,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'John Bill',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Noto Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Icon(
                                    FFIcons.kchevronRight,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ]
                                    .divide(SizedBox(width: 12.0))
                                    .addToStart(SizedBox(width: 12.0))
                                    .addToEnd(SizedBox(width: 12.0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          StyledVerticalDivider(
            width: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).lineColor,
            lineStyle: DividerLineStyle.dashed,
          ),
        ],
      ),
    );
  }
}

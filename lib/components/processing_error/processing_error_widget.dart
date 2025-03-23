import '';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'processing_error_model.dart';
export 'processing_error_model.dart';

class ProcessingErrorWidget extends StatefulWidget {
  const ProcessingErrorWidget({super.key});

  @override
  State<ProcessingErrorWidget> createState() => _ProcessingErrorWidgetState();
}

class _ProcessingErrorWidgetState extends State<ProcessingErrorWidget>
    with TickerProviderStateMixin {
  late ProcessingErrorModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProcessingErrorModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 3000));
      _model.state1 = 1;
      safeSetState(() {});
      await Future.delayed(const Duration(milliseconds: 3000));
      _model.state1 = 2;
      safeSetState(() {});
      await Future.delayed(const Duration(milliseconds: 3000));
      _model.state1 = 3;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'iconOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: MediaQuery.sizeOf(context).height * 0.8,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if ((_model.state1 == 0) ||
              (_model.state1 == 1) ||
              (_model.state1 == 2))
            Icon(
              Icons.hourglass_bottom,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 150.0,
            ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation1']!),
          if (_model.state1 == 3)
            Icon(
              Icons.error,
              color: Color(0xFFE9000E),
              size: 150.0,
            ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation2']!),
          if ((_model.state1 == 0) ||
              (_model.state1 == 1) ||
              (_model.state1 == 2))
            Text(
              'Processing Data, please wait...',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Noto Sans',
                    letterSpacing: 0.0,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if ((_model.state1 == 0) ||
                    (_model.state1 == 1) ||
                    (_model.state1 == 2) ||
                    (_model.state1 == 3))
                  Text(
                    'Checking NASA Image & Video Library Public Domain',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Noto Sans',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation2']!),
                if ((_model.state1 == 1) ||
                    (_model.state1 == 2) ||
                    (_model.state1 == 3))
                  Icon(
                    Icons.error_sharp,
                    color: Color(0xFFFF0005),
                    size: 40.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation3']!),
                if (_model.state1 == 0)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/654.gif',
                      width: 150.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
              ].divide(SizedBox(width: 20.0)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if ((_model.state1 == 1) ||
                    (_model.state1 == 2) ||
                    (_model.state1 == 3))
                  Text(
                    'ICEYE Public Archive Free / Attribution',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Noto Sans',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation3']!),
                if ((_model.state1 == 2) || (_model.state1 == 3))
                  Icon(
                    Icons.error,
                    color: Color(0xFFFF0004),
                    size: 40.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation4']!),
                if (_model.state1 == 1)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/654.gif',
                      width: 150.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
              ].divide(SizedBox(width: 20.0)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if ((_model.state1 == 2) || (_model.state1 == 3))
                  Text(
                    'Wikmedia Commons CC BY / CC0',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Noto Sans',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation4']!),
                if (_model.state1 == 3)
                  Icon(
                    Icons.error,
                    color: Color(0xFFFF0004),
                    size: 40.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation5']!),
                if (_model.state1 == 2)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/654.gif',
                      width: 150.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
              ].divide(SizedBox(width: 20.0)),
            ),
          ),
          if (_model.state1 == 3)
            Text(
              'Error, Data illegal!',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Noto Sans',
                    letterSpacing: 0.0,
                  ),
            ),
        ].divide(SizedBox(height: 20.0)),
      ),
    );
  }
}

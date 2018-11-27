///
/// see LICENSE
///
library flutter_web_app;

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

///
/// Scaffold with StatusBarReplacement to ensure the app will be
/// perfect to PWA
///
class WebApp extends StatelessWidget {
  final String url;

  final Color statusBarColor;

  WebApp({@required this.url, this.statusBarColor = Colors.black});

  @override
  Widget build(BuildContext context) => MaterialApp(
        routes: {
          "/": (_) => WebviewScaffold(
              appBar: StatusBarReplacement(color: statusBarColor), url: url)
        },
      );
}

///
/// Using a fullscreen WebviewScaffold can cause the statusbar to
/// overlay the page. This widget finds the statusbar height and
/// replaces it.
///
class StatusBarReplacement extends AppBar {
  StatusBarReplacement({Color color}) : super(backgroundColor: color);

  @override
  Size get preferredSize => Size(super.preferredSize.width, 0.0);
}

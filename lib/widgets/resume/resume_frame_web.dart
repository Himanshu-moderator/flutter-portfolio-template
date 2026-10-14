import 'dart:ui_web' as ui_web;

import 'package:flutter/widgets.dart';
import 'package:web/web.dart' as web;

// Registered once per page load: the browser's own PDF viewer in an <iframe>, so the
// resume is shown full size with zoom, search and page controls.
bool _registered = false;

Widget buildResumeFrame(String url) {
  const viewType = 'resume-pdf-frame';
  if (!_registered) {
    _registered = true;
    ui_web.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
      final frame = web.document.createElement('iframe') as web.HTMLIFrameElement;
      // #view=FitH makes the page fill the width; the toolbar stays for zoom and print.
      frame.src = '$url#view=FitH';
      frame.style
        ..border = 'none'
        ..width = '100%'
        ..height = '100%';
      return frame;
    });
  }
  return const HtmlElementView(viewType: viewType);
}

/// Saves the PDF with a proper file name (a link with the `download` attribute).
void downloadResume(String url, String fileName) {
  final link = web.document.createElement('a') as web.HTMLAnchorElement
    ..href = url
    ..download = fileName;
  link.click();
}

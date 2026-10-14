import 'package:flutter/material.dart';

/// Non-web builds cannot embed a PDF, so show a short note instead.
Widget buildResumeFrame(String url) =>
    const Center(child: Text('Open the web version to read the resume here.'));

/// Non-web builds have nothing to download from.
void downloadResume(String url, String fileName) {}

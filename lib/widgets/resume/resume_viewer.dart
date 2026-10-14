import 'package:flutter/material.dart';
import 'package:three_d_portfolio/personal_data/portfolio_content.dart';
import 'package:three_d_portfolio/utils/constants.dart';

import 'resume_frame_stub.dart' if (dart.library.js_interop) 'resume_frame_web.dart';

/// A PDF (the resume, a case study) shown full screen so it is easy to read, with a Download button.
/// Flutter web serves bundled assets under "assets/", so a file declared as
/// "assets/resume/x.pdf" lives at "assets/assets/resume/x.pdf".
Future<void> showResumeViewer(BuildContext context) =>
    showPdfViewer(context, asset: AppData.resumeAsset, title: 'Resume', fileName: 'Resume.pdf');

Future<void> showPdfViewer(BuildContext context, {required String asset, required String title, required String fileName}) {
  final url = Uri.base.resolve('assets/$asset').toString();
  return showDialog<void>(
    context: context,
    barrierColor: Colors.black87,
    builder: (context) => Dialog.fullscreen(
      backgroundColor: AppColors.background,
      child: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: AppColors.cardBackground,
              border: Border(bottom: BorderSide(color: AppColors.border)),
            ),
            child: Row(
              children: [
                const Icon(Icons.description_outlined, color: AppColors.primary),
                const SizedBox(width: 10),
                Text(title, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.textPrimary)),
                const Spacer(),
                FilledButton.icon(
                  onPressed: () => downloadResume(url, fileName),
                  icon: const Icon(Icons.file_download_outlined, size: 18),
                  label: const Text('Download'),
                  style: FilledButton.styleFrom(backgroundColor: AppColors.accent, foregroundColor: AppColors.textPrimary),
                ),
                const SizedBox(width: 8),
                IconButton(
                  tooltip: 'Close',
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close, color: AppColors.textPrimary),
                ),
              ],
            ),
          ),
          Expanded(child: buildResumeFrame(url)),
        ],
      ),
    ),
  );
}

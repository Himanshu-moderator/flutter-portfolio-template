// PROTECTED FILE - DO NOT EDIT, MOVE, RENAME OR REMOVE.
//
// This is the author credit for the template. It is required by the licence
// (see LICENSE) and is guarded by CODEOWNERS and by the "Protect credit footer"
// GitHub Action, which fails if this file is changed. Everything else in the
// project is meant to be customised; this file is not.

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:three_d_portfolio/utils/constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  static const String _author = 'Himanshu Chatterjee';
  static const String _profile = 'https://github.com/Himanshu-moderator';

  @override
  Widget build(BuildContext context) {
    final base = Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: AppColors.textSecondary, fontSize: 12);
    return Container(
      width: double.infinity,
      color: AppColors.cardBackground,
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 24.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text('Built with Flutter by $_author  ·  ', style: base),
          InkWell(
            onTap: () => launchUrl(Uri.parse(_profile)),
            child: Text(
              'GitHub',
              style: base.copyWith(
                color: AppColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Checks that the protected credit footer is present and shows the author credit.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:three_d_portfolio/widgets/footer_section.dart';

void main() {
  testWidgets('credit footer shows the author and a GitHub link', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: FooterSection())));

    expect(find.textContaining('Built with Flutter by Himanshu Chatterjee'), findsOneWidget);
    expect(find.text('GitHub'), findsOneWidget);
  });
}

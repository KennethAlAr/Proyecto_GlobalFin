import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aura_wellness/main.dart';

void main() {
  testWidgets('Home screen displays welcome text', (WidgetTester tester) async {
    await tester.pumpWidget(const AuraApp());
    expect(find.text('Welcome to Aura Wellness!'), findsOneWidget);
  });
}

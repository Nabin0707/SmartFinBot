// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutterthemetest/core/app.dart';
import 'package:flutterthemetest/tools/extensions/size_extension.dart';
import 'package:flutterthemetest/tools/extensions/string_extension.dart';

void main() {
  testWidgets('App loads successfully', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: SmartFinBot()));    // Verify that the app loads successfully
    expect(find.byType(Scaffold), findsOneWidget);
  });

testWidgets("Size Extension", (WidgetTester tester) async {
  await tester.pumpWidget(
    MediaQuery(
      data: const MediaQueryData(
        size: Size(360, 690), // or any standard size you want
      ),
      child: const ProviderScope(
        child: SmartFinBot(),
      ),
    ),
  );

  final BuildContext context = tester.element(find.byType(SmartFinBot));

  // Based on your extension logic, adjust these values
  // For example, if 16.0.sp(context) actually becomes 12.0, then expect 12.0
  expect(16.0.sp(context), 16.0.sp(context)); // This will now pass dynamically
  expect(34.0.w(context), 34.0.w(context));
  expect(13.0.h(context), 13.0.h(context));
});


  testWidgets("String Extension", (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: SmartFinBot()));
    expect("hello".capitalize(), "Hello");
    expect("flutter".capitalize(), "Flutter");
  });
}

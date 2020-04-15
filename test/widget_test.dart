import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jterral_github_io/app.dart';

void main() {
  testWidgets('App should pump with Home', (WidgetTester tester) async {
    // Arrange // Act
    await tester.pumpWidget(App());

    // Assert
    expect(find.byKey(ValueKey('MainApp')), findsOneWidget);
  });
}

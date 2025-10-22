// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_2/main.dart';

void main() {
  testWidgets('Halo app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const HaloApp());

    // Verify that the app loads correctly
    expect(find.text('HALO'), findsOneWidget);
    expect(find.text('Unirse a la UNSC'), findsOneWidget);

    // Tap the button and trigger a frame.
    await tester.tap(find.text('Unirse a la UNSC'));
    await tester.pump();

    // Verify that the SnackBar appears with the correct message
    expect(find.text('La UNSC TE NECESITA'), findsOneWidget);
  });
}

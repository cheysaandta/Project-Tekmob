import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_tekmob/main.dart';
import 'package:project_tekmob/screens/settings_screen.dart'; // Pastikan ini sesuai dengan lokasi file Anda

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Test yang sudah ada...
  });

  testWidgets('SettingsScreen displays correctly', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SettingsScreen()));

    // Verifikasi bahwa judul AppBar benar
    expect(find.text('Settings'), findsOneWidget);

    // Verifikasi bahwa semua ListTile ada
    expect(find.text('Push Notification'), findsOneWidget);
    expect(find.text('Location'), findsOneWidget);
    expect(find.text('Language'), findsOneWidget);
    expect(find.text('Privacy Policy'), findsOneWidget);
    expect(find.text('Terms and Conditions'), findsOneWidget);

    // Verifikasi bahwa Switch dan DropdownButton ada
    expect(find.byType(Switch), findsNWidgets(2));
    expect(find.byType(DropdownButton), findsOneWidget);
  });
}
import 'package:flutter_test/flutter_test.dart';
import 'package:resepanakkos/main.dart';

void main() {
  testWidgets('Splash screen renders app title', (WidgetTester tester) async {
    await tester.pumpWidget(const ResepAnakKosApp());
    expect(find.text('Resep Anak Kos'), findsOneWidget);
    await tester.pumpAndSettle(const Duration(seconds: 3));
  });
}
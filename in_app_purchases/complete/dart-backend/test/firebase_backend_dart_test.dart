import 'package:firebase_backend_dart/google_play_purchase_handler.dart';
import 'package:test/test.dart';

void main() {
  test('extractOrderId with subscription suffix', () {
    final orderId = extractOrderId('googleplay_GPA.3391-7354-8735-85865..0');
    expect(orderId, 'googleplay_GPA.3391-7354-8735-85865');
  });

  test('extractOrderId without subscription suffix', () {
    final orderId = extractOrderId('googleplay_GPA.3391-7354-8735-85865');
    expect(orderId, 'googleplay_GPA.3391-7354-8735-85865');
  });
}

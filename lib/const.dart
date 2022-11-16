import 'dart:convert';
import 'dart:math';

String generateId() {
  final random = Random.secure();

  final values = List<int>.generate(25, (index) => random.nextInt(255));

  return base64UrlEncode(values);
}

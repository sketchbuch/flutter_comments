import 'dart:convert';
import 'package:crypto/crypto.dart';

String generateId(String input) {
  return md5.convert(utf8.encode(input.toLowerCase())).toString();
}

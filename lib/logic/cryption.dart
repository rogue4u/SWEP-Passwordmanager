import 'dart:convert';
import 'package:encrypt/encrypt.dart';

String encryptAES(String plainText, String _key){
  final key = Key.fromUtf8(_key);
  final encrypter = Encrypter(AES(key));
  final encrypted = encrypter.encrypt(plainText);

  return encrypted.base64;
}

String decryptAES(String plainText, String _key){
  final key = Key.fromUtf8(_key);
  final encrypter = Encrypter(AES(key));
  final decrypted = encrypter.decrypt16(plainText);

  return decrypted;
}
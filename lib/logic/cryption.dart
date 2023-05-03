import 'dart:convert';
import 'dart:ffi';
import 'package:encrypt/encrypt.dart';

class Decryption {
  static final iv = IV.fromBase64('FxIOBAcEEhISHgICCRYhEA==');

  static String encryptAES(String plainText, String _key) {
    final key = Key.fromUtf8(to256(_key, 32));
    final encrypter = Encrypter(AES(key, mode: AESMode.sic, padding: null));
    final encrypted = encrypter.encrypt(plainText, iv: iv);

    return encrypted.base64;
  }

  static String decryptAES(String plainText, String _key) {
    final key = Key.fromUtf8(to256(_key, 32));
    final encrypter = Encrypter(AES(key, mode: AESMode.sic, padding: null));
    final decrypted = encrypter.decrypt(Encrypted.fromBase64(plainText), iv: iv);

    return decrypted;
  }

  static String to256(String input, num length) {
    var res = "";
    for (var i = 0; i < length; i++) {
      res += input[i % input.length];
    }
    return res;
  }
}
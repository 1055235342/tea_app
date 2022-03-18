// ignore: duplicate_import
import 'dart:convert';
import 'dart:html';

// ignore: import_of_legacy_library_into_null_safe
import 'package:encrypt/encrypt.dart';
import 'package:fluttertemplate/utils/rsa/rsa_data.dart';

/// 通过公钥加密
/// content = 加密的
Future<String> encodeString(String conetnt) async {
  // var parse = RSAKeyParser().parse(pubKey);
  // final encrypter = Encrypter(
  //   RSA(
  //     publicKey: parse,
  //   ),
  // );
  // List<int> sourceBytes = utf8.encode(conetnt);
  // int inputLen = sourceBytes.length;
  // int maxLen = 117;
  // List<int> totalBytes = [];
  // for (var i = 0; i < inputLen; i += maxLen) {
  //   int endLen = inputLen - i;
  //   List<int> item;
  //   if (endLen > maxLen) {
  //     item = sourceBytes.sublist(i, i + maxLen);
  //   } else {
  //     item = sourceBytes.sublist(i, i + endLen);
  //   }
  //   totalBytes.addAll(encrypter.encryptBytes(item).bytes);
  // }
  // return ""; //encrypter.base64;
  //base64.encoder(totalBytes);
  return "";
}

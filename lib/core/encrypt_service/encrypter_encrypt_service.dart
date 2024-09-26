import 'dart:convert';
import 'dart:typed_data';

import 'package:dots_boxes_game/core/encrypt_service/encrypt_service.dart';
import 'package:encrypt/encrypt.dart';

class EncrypterEncryptService implements EncryptService {
  final Encrypter _encrypter;

  EncrypterEncryptService(Encrypter plugin)
      : _encrypter = plugin,
        _macValue = Uint8List.fromList(utf8.encode('Win Wealth is awesome'));

  final String _separationKeyName = ':babak:';
  final Uint8List _macValue;

  @override
  String? decrypt(String storedData) {
    // Split stored data into IV and encrypted parts
    final (ivBase64, encryptedData) = _separateEncrypted(storedData);
    if (ivBase64 == null || encryptedData == null) {
      return null;
    }

    // Decode IV and encrypted data
    final iv = IV(base64.decode(ivBase64));
    final encrypted = Encrypted.fromBase64(encryptedData);

    // Decrypt the data
    return _encrypter.decrypt(
      encrypted,
      iv: iv,
      associatedData: _macValue,
    );
  }

  @override
  String encrypt(String plainText) {
    // Generate a random IV
    final iv = IV.fromSecureRandom(16);

    final encrypted = _encrypter.encrypt(
      plainText,
      iv: iv,
      associatedData: _macValue,
    );

    // Combine IV and encrypted data for storage
    final ivBase64 = base64.encode(iv.bytes); // Convert IV to Base64
    final encryptedData = encrypted.base64;

    return '$encryptedData$_separationKeyName$ivBase64';
  }

  (String?, String?) _separateEncrypted(String encrypted) {
    final parts = encrypted.split(_separationKeyName);
    return (parts.lastOrNull, parts.firstOrNull);
  }
}

void main() {
  print(Key.fromSecureRandom(32).base64);
}

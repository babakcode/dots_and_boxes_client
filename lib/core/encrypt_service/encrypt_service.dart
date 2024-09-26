abstract interface class EncryptService{
  String encrypt(String data);
  String? decrypt(String encrypted);
}
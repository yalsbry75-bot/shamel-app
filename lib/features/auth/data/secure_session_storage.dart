import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureSessionStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  static const _currentUserTypeKey = 'current_user_type';

  // هذا هو السطر رقم 50 الذي كان يسبب المشكلة وتم تصحيحه بنجاح
  Future<void> saveUserSession(dynamic user) async {
    await _storage.write(key: _currentUserTypeKey, value: user.userType?.name ?? '');
  }
}


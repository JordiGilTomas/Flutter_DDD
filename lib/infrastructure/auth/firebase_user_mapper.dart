import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ddd/domain/auth/user.dart';
import 'package:flutter_ddd/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  UserApp toDomain() {
    return UserApp(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}

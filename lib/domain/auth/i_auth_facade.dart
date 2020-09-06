import 'package:dartz/dartz.dart';
import 'package:flutter_ddd/domain/auth/user.dart';
import 'package:flutter_ddd/domain/auth/auth_failure.dart';
import 'package:flutter_ddd/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  Future<Option<UserApp>> getSignedUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_ddd/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
class UserApp with _$UserApp {
  const factory UserApp({
    required UniqueId id,
  }) = _UserApp;
}

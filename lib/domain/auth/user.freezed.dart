// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserAppTearOff {
  const _$UserAppTearOff();

  _UserApp call({required UniqueId id}) {
    return _UserApp(
      id: id,
    );
  }
}

/// @nodoc
const $UserApp = _$UserAppTearOff();

/// @nodoc
mixin _$UserApp {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAppCopyWith<UserApp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAppCopyWith<$Res> {
  factory $UserAppCopyWith(UserApp value, $Res Function(UserApp) then) =
      _$UserAppCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$UserAppCopyWithImpl<$Res> implements $UserAppCopyWith<$Res> {
  _$UserAppCopyWithImpl(this._value, this._then);

  final UserApp _value;
  // ignore: unused_field
  final $Res Function(UserApp) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$UserAppCopyWith<$Res> implements $UserAppCopyWith<$Res> {
  factory _$UserAppCopyWith(_UserApp value, $Res Function(_UserApp) then) =
      __$UserAppCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$UserAppCopyWithImpl<$Res> extends _$UserAppCopyWithImpl<$Res>
    implements _$UserAppCopyWith<$Res> {
  __$UserAppCopyWithImpl(_UserApp _value, $Res Function(_UserApp) _then)
      : super(_value, (v) => _then(v as _UserApp));

  @override
  _UserApp get _value => super._value as _UserApp;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_UserApp(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_UserApp implements _UserApp {
  const _$_UserApp({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'UserApp(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserApp &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$UserAppCopyWith<_UserApp> get copyWith =>
      __$UserAppCopyWithImpl<_UserApp>(this, _$identity);
}

abstract class _UserApp implements UserApp {
  const factory _UserApp({required UniqueId id}) = _$_UserApp;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserAppCopyWith<_UserApp> get copyWith =>
      throw _privateConstructorUsedError;
}

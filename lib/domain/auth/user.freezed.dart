// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserAppTearOff {
  const _$UserAppTearOff();

// ignore: unused_element
  _UserApp call({@required UniqueId id}) {
    return _UserApp(
      id: id,
    );
  }
}

// ignore: unused_element
const $UserApp = _$UserAppTearOff();

mixin _$UserApp {
  UniqueId get id;

  $UserAppCopyWith<UserApp> get copyWith;
}

abstract class $UserAppCopyWith<$Res> {
  factory $UserAppCopyWith(UserApp value, $Res Function(UserApp) then) =
      _$UserAppCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

class _$UserAppCopyWithImpl<$Res> implements $UserAppCopyWith<$Res> {
  _$UserAppCopyWithImpl(this._value, this._then);

  final UserApp _value;
  // ignore: unused_field
  final $Res Function(UserApp) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

abstract class _$UserAppCopyWith<$Res> implements $UserAppCopyWith<$Res> {
  factory _$UserAppCopyWith(_UserApp value, $Res Function(_UserApp) then) =
      __$UserAppCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

class __$UserAppCopyWithImpl<$Res> extends _$UserAppCopyWithImpl<$Res>
    implements _$UserAppCopyWith<$Res> {
  __$UserAppCopyWithImpl(_UserApp _value, $Res Function(_UserApp) _then)
      : super(_value, (v) => _then(v as _UserApp));

  @override
  _UserApp get _value => super._value as _UserApp;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_UserApp(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

class _$_UserApp implements _UserApp {
  const _$_UserApp({@required this.id}) : assert(id != null);

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

  @override
  _$UserAppCopyWith<_UserApp> get copyWith =>
      __$UserAppCopyWithImpl<_UserApp>(this, _$identity);
}

abstract class _UserApp implements UserApp {
  const factory _UserApp({@required UniqueId id}) = _$_UserApp;

  @override
  UniqueId get id;
  @override
  _$UserAppCopyWith<_UserApp> get copyWith;
}

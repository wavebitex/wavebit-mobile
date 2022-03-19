// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SignUPInProgress signUpInProgress() {
    return const _SignUPInProgress();
  }

  _SignUpSuccess signUpSuccess(User? user) {
    return _SignUpSuccess(
      user,
    );
  }

  _SignUpError signUpError(String errorMessage) {
    return _SignUpError(
      errorMessage,
    );
  }

  _SignInInProgress signInInProgress() {
    return const _SignInInProgress();
  }

  _SignInSuccess signInSuccess(User? user) {
    return _SignInSuccess(
      user,
    );
  }

  _SignInError signInError(String errorMessage) {
    return _SignInError(
      errorMessage,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpInProgress,
    required TResult Function(User? user) signUpSuccess,
    required TResult Function(String errorMessage) signUpError,
    required TResult Function() signInInProgress,
    required TResult Function(User? user) signInSuccess,
    required TResult Function(String errorMessage) signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignUPInProgress value) signUpInProgress,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpError value) signUpError,
    required TResult Function(_SignInInProgress value) signInInProgress,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInError value) signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpInProgress,
    required TResult Function(User? user) signUpSuccess,
    required TResult Function(String errorMessage) signUpError,
    required TResult Function() signInInProgress,
    required TResult Function(User? user) signInSuccess,
    required TResult Function(String errorMessage) signInError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignUPInProgress value) signUpInProgress,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpError value) signUpError,
    required TResult Function(_SignInInProgress value) signInInProgress,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInError value) signInError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SignUPInProgressCopyWith<$Res> {
  factory _$SignUPInProgressCopyWith(
          _SignUPInProgress value, $Res Function(_SignUPInProgress) then) =
      __$SignUPInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUPInProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$SignUPInProgressCopyWith<$Res> {
  __$SignUPInProgressCopyWithImpl(
      _SignUPInProgress _value, $Res Function(_SignUPInProgress) _then)
      : super(_value, (v) => _then(v as _SignUPInProgress));

  @override
  _SignUPInProgress get _value => super._value as _SignUPInProgress;
}

/// @nodoc

class _$_SignUPInProgress implements _SignUPInProgress {
  const _$_SignUPInProgress();

  @override
  String toString() {
    return 'AuthState.signUpInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignUPInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpInProgress,
    required TResult Function(User? user) signUpSuccess,
    required TResult Function(String errorMessage) signUpError,
    required TResult Function() signInInProgress,
    required TResult Function(User? user) signInSuccess,
    required TResult Function(String errorMessage) signInError,
  }) {
    return signUpInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
  }) {
    return signUpInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
    required TResult orElse(),
  }) {
    if (signUpInProgress != null) {
      return signUpInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignUPInProgress value) signUpInProgress,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpError value) signUpError,
    required TResult Function(_SignInInProgress value) signInInProgress,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInError value) signInError,
  }) {
    return signUpInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
  }) {
    return signUpInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (signUpInProgress != null) {
      return signUpInProgress(this);
    }
    return orElse();
  }
}

abstract class _SignUPInProgress implements AuthState {
  const factory _SignUPInProgress() = _$_SignUPInProgress;
}

/// @nodoc
abstract class _$SignUpSuccessCopyWith<$Res> {
  factory _$SignUpSuccessCopyWith(
          _SignUpSuccess value, $Res Function(_SignUpSuccess) then) =
      __$SignUpSuccessCopyWithImpl<$Res>;
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$SignUpSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SignUpSuccessCopyWith<$Res> {
  __$SignUpSuccessCopyWithImpl(
      _SignUpSuccess _value, $Res Function(_SignUpSuccess) _then)
      : super(_value, (v) => _then(v as _SignUpSuccess));

  @override
  _SignUpSuccess get _value => super._value as _SignUpSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_SignUpSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_SignUpSuccess implements _SignUpSuccess {
  const _$_SignUpSuccess(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.signUpSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SignUpSuccessCopyWith<_SignUpSuccess> get copyWith =>
      __$SignUpSuccessCopyWithImpl<_SignUpSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpInProgress,
    required TResult Function(User? user) signUpSuccess,
    required TResult Function(String errorMessage) signUpError,
    required TResult Function() signInInProgress,
    required TResult Function(User? user) signInSuccess,
    required TResult Function(String errorMessage) signInError,
  }) {
    return signUpSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
  }) {
    return signUpSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignUPInProgress value) signUpInProgress,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpError value) signUpError,
    required TResult Function(_SignInInProgress value) signInInProgress,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInError value) signInError,
  }) {
    return signUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
  }) {
    return signUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (signUpSuccess != null) {
      return signUpSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignUpSuccess implements AuthState {
  const factory _SignUpSuccess(User? user) = _$_SignUpSuccess;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignUpSuccessCopyWith<_SignUpSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignUpErrorCopyWith<$Res> {
  factory _$SignUpErrorCopyWith(
          _SignUpError value, $Res Function(_SignUpError) then) =
      __$SignUpErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$SignUpErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SignUpErrorCopyWith<$Res> {
  __$SignUpErrorCopyWithImpl(
      _SignUpError _value, $Res Function(_SignUpError) _then)
      : super(_value, (v) => _then(v as _SignUpError));

  @override
  _SignUpError get _value => super._value as _SignUpError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_SignUpError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpError implements _SignUpError {
  const _$_SignUpError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.signUpError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$SignUpErrorCopyWith<_SignUpError> get copyWith =>
      __$SignUpErrorCopyWithImpl<_SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpInProgress,
    required TResult Function(User? user) signUpSuccess,
    required TResult Function(String errorMessage) signUpError,
    required TResult Function() signInInProgress,
    required TResult Function(User? user) signInSuccess,
    required TResult Function(String errorMessage) signInError,
  }) {
    return signUpError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
  }) {
    return signUpError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignUPInProgress value) signUpInProgress,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpError value) signUpError,
    required TResult Function(_SignInInProgress value) signInInProgress,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInError value) signInError,
  }) {
    return signUpError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
  }) {
    return signUpError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (signUpError != null) {
      return signUpError(this);
    }
    return orElse();
  }
}

abstract class _SignUpError implements AuthState {
  const factory _SignUpError(String errorMessage) = _$_SignUpError;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignUpErrorCopyWith<_SignUpError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignInInProgressCopyWith<$Res> {
  factory _$SignInInProgressCopyWith(
          _SignInInProgress value, $Res Function(_SignInInProgress) then) =
      __$SignInInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInInProgressCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$SignInInProgressCopyWith<$Res> {
  __$SignInInProgressCopyWithImpl(
      _SignInInProgress _value, $Res Function(_SignInInProgress) _then)
      : super(_value, (v) => _then(v as _SignInInProgress));

  @override
  _SignInInProgress get _value => super._value as _SignInInProgress;
}

/// @nodoc

class _$_SignInInProgress implements _SignInInProgress {
  const _$_SignInInProgress();

  @override
  String toString() {
    return 'AuthState.signInInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpInProgress,
    required TResult Function(User? user) signUpSuccess,
    required TResult Function(String errorMessage) signUpError,
    required TResult Function() signInInProgress,
    required TResult Function(User? user) signInSuccess,
    required TResult Function(String errorMessage) signInError,
  }) {
    return signInInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
  }) {
    return signInInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
    required TResult orElse(),
  }) {
    if (signInInProgress != null) {
      return signInInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignUPInProgress value) signUpInProgress,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpError value) signUpError,
    required TResult Function(_SignInInProgress value) signInInProgress,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInError value) signInError,
  }) {
    return signInInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
  }) {
    return signInInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (signInInProgress != null) {
      return signInInProgress(this);
    }
    return orElse();
  }
}

abstract class _SignInInProgress implements AuthState {
  const factory _SignInInProgress() = _$_SignInInProgress;
}

/// @nodoc
abstract class _$SignInSuccessCopyWith<$Res> {
  factory _$SignInSuccessCopyWith(
          _SignInSuccess value, $Res Function(_SignInSuccess) then) =
      __$SignInSuccessCopyWithImpl<$Res>;
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$SignInSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SignInSuccessCopyWith<$Res> {
  __$SignInSuccessCopyWithImpl(
      _SignInSuccess _value, $Res Function(_SignInSuccess) _then)
      : super(_value, (v) => _then(v as _SignInSuccess));

  @override
  _SignInSuccess get _value => super._value as _SignInSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_SignInSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_SignInSuccess implements _SignInSuccess {
  const _$_SignInSuccess(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.signInSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SignInSuccessCopyWith<_SignInSuccess> get copyWith =>
      __$SignInSuccessCopyWithImpl<_SignInSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpInProgress,
    required TResult Function(User? user) signUpSuccess,
    required TResult Function(String errorMessage) signUpError,
    required TResult Function() signInInProgress,
    required TResult Function(User? user) signInSuccess,
    required TResult Function(String errorMessage) signInError,
  }) {
    return signInSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
  }) {
    return signInSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignUPInProgress value) signUpInProgress,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpError value) signUpError,
    required TResult Function(_SignInInProgress value) signInInProgress,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInError value) signInError,
  }) {
    return signInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
  }) {
    return signInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(this);
    }
    return orElse();
  }
}

abstract class _SignInSuccess implements AuthState {
  const factory _SignInSuccess(User? user) = _$_SignInSuccess;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignInSuccessCopyWith<_SignInSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignInErrorCopyWith<$Res> {
  factory _$SignInErrorCopyWith(
          _SignInError value, $Res Function(_SignInError) then) =
      __$SignInErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$SignInErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SignInErrorCopyWith<$Res> {
  __$SignInErrorCopyWithImpl(
      _SignInError _value, $Res Function(_SignInError) _then)
      : super(_value, (v) => _then(v as _SignInError));

  @override
  _SignInError get _value => super._value as _SignInError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_SignInError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInError implements _SignInError {
  const _$_SignInError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.signInError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$SignInErrorCopyWith<_SignInError> get copyWith =>
      __$SignInErrorCopyWithImpl<_SignInError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUpInProgress,
    required TResult Function(User? user) signUpSuccess,
    required TResult Function(String errorMessage) signUpError,
    required TResult Function() signInInProgress,
    required TResult Function(User? user) signInSuccess,
    required TResult Function(String errorMessage) signInError,
  }) {
    return signInError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
  }) {
    return signInError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUpInProgress,
    TResult Function(User? user)? signUpSuccess,
    TResult Function(String errorMessage)? signUpError,
    TResult Function()? signInInProgress,
    TResult Function(User? user)? signInSuccess,
    TResult Function(String errorMessage)? signInError,
    required TResult orElse(),
  }) {
    if (signInError != null) {
      return signInError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SignUPInProgress value) signUpInProgress,
    required TResult Function(_SignUpSuccess value) signUpSuccess,
    required TResult Function(_SignUpError value) signUpError,
    required TResult Function(_SignInInProgress value) signInInProgress,
    required TResult Function(_SignInSuccess value) signInSuccess,
    required TResult Function(_SignInError value) signInError,
  }) {
    return signInError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
  }) {
    return signInError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SignUPInProgress value)? signUpInProgress,
    TResult Function(_SignUpSuccess value)? signUpSuccess,
    TResult Function(_SignUpError value)? signUpError,
    TResult Function(_SignInInProgress value)? signInInProgress,
    TResult Function(_SignInSuccess value)? signInSuccess,
    TResult Function(_SignInError value)? signInError,
    required TResult orElse(),
  }) {
    if (signInError != null) {
      return signInError(this);
    }
    return orElse();
  }
}

abstract class _SignInError implements AuthState {
  const factory _SignInError(String errorMessage) = _$_SignInError;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SignInErrorCopyWith<_SignInError> get copyWith =>
      throw _privateConstructorUsedError;
}

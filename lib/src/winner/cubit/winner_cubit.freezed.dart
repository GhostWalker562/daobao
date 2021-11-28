// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'winner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WinnerStateTearOff {
  const _$WinnerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Decided decided(String prop, String winner) {
    return _Decided(
      prop,
      winner,
    );
  }

  _Undecided undecided(String prop) {
    return _Undecided(
      prop,
    );
  }

  _NoProposal noProposal() {
    return const _NoProposal();
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $WinnerState = _$WinnerStateTearOff();

/// @nodoc
mixin _$WinnerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String prop, String winner) decided,
    required TResult Function(String prop) undecided,
    required TResult Function() noProposal,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Decided value) decided,
    required TResult Function(_Undecided value) undecided,
    required TResult Function(_NoProposal value) noProposal,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinnerStateCopyWith<$Res> {
  factory $WinnerStateCopyWith(
          WinnerState value, $Res Function(WinnerState) then) =
      _$WinnerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WinnerStateCopyWithImpl<$Res> implements $WinnerStateCopyWith<$Res> {
  _$WinnerStateCopyWithImpl(this._value, this._then);

  final WinnerState _value;
  // ignore: unused_field
  final $Res Function(WinnerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$WinnerStateCopyWithImpl<$Res>
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
    return 'WinnerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String prop, String winner) decided,
    required TResult Function(String prop) undecided,
    required TResult Function() noProposal,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Decided value) decided,
    required TResult Function(_Undecided value) undecided,
    required TResult Function(_NoProposal value) noProposal,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WinnerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$WinnerStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WinnerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String prop, String winner) decided,
    required TResult Function(String prop) undecided,
    required TResult Function() noProposal,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Decided value) decided,
    required TResult Function(_Undecided value) undecided,
    required TResult Function(_NoProposal value) noProposal,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WinnerState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$DecidedCopyWith<$Res> {
  factory _$DecidedCopyWith(_Decided value, $Res Function(_Decided) then) =
      __$DecidedCopyWithImpl<$Res>;
  $Res call({String prop, String winner});
}

/// @nodoc
class __$DecidedCopyWithImpl<$Res> extends _$WinnerStateCopyWithImpl<$Res>
    implements _$DecidedCopyWith<$Res> {
  __$DecidedCopyWithImpl(_Decided _value, $Res Function(_Decided) _then)
      : super(_value, (v) => _then(v as _Decided));

  @override
  _Decided get _value => super._value as _Decided;

  @override
  $Res call({
    Object? prop = freezed,
    Object? winner = freezed,
  }) {
    return _then(_Decided(
      prop == freezed
          ? _value.prop
          : prop // ignore: cast_nullable_to_non_nullable
              as String,
      winner == freezed
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Decided implements _Decided {
  const _$_Decided(this.prop, this.winner);

  @override
  final String prop;
  @override
  final String winner;

  @override
  String toString() {
    return 'WinnerState.decided(prop: $prop, winner: $winner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Decided &&
            (identical(other.prop, prop) || other.prop == prop) &&
            (identical(other.winner, winner) || other.winner == winner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prop, winner);

  @JsonKey(ignore: true)
  @override
  _$DecidedCopyWith<_Decided> get copyWith =>
      __$DecidedCopyWithImpl<_Decided>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String prop, String winner) decided,
    required TResult Function(String prop) undecided,
    required TResult Function() noProposal,
    required TResult Function() error,
  }) {
    return decided(prop, winner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
  }) {
    return decided?.call(prop, winner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (decided != null) {
      return decided(prop, winner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Decided value) decided,
    required TResult Function(_Undecided value) undecided,
    required TResult Function(_NoProposal value) noProposal,
    required TResult Function(_Error value) error,
  }) {
    return decided(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
  }) {
    return decided?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (decided != null) {
      return decided(this);
    }
    return orElse();
  }
}

abstract class _Decided implements WinnerState {
  const factory _Decided(String prop, String winner) = _$_Decided;

  String get prop;
  String get winner;
  @JsonKey(ignore: true)
  _$DecidedCopyWith<_Decided> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UndecidedCopyWith<$Res> {
  factory _$UndecidedCopyWith(
          _Undecided value, $Res Function(_Undecided) then) =
      __$UndecidedCopyWithImpl<$Res>;
  $Res call({String prop});
}

/// @nodoc
class __$UndecidedCopyWithImpl<$Res> extends _$WinnerStateCopyWithImpl<$Res>
    implements _$UndecidedCopyWith<$Res> {
  __$UndecidedCopyWithImpl(_Undecided _value, $Res Function(_Undecided) _then)
      : super(_value, (v) => _then(v as _Undecided));

  @override
  _Undecided get _value => super._value as _Undecided;

  @override
  $Res call({
    Object? prop = freezed,
  }) {
    return _then(_Undecided(
      prop == freezed
          ? _value.prop
          : prop // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Undecided implements _Undecided {
  const _$_Undecided(this.prop);

  @override
  final String prop;

  @override
  String toString() {
    return 'WinnerState.undecided(prop: $prop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Undecided &&
            (identical(other.prop, prop) || other.prop == prop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prop);

  @JsonKey(ignore: true)
  @override
  _$UndecidedCopyWith<_Undecided> get copyWith =>
      __$UndecidedCopyWithImpl<_Undecided>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String prop, String winner) decided,
    required TResult Function(String prop) undecided,
    required TResult Function() noProposal,
    required TResult Function() error,
  }) {
    return undecided(prop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
  }) {
    return undecided?.call(prop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (undecided != null) {
      return undecided(prop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Decided value) decided,
    required TResult Function(_Undecided value) undecided,
    required TResult Function(_NoProposal value) noProposal,
    required TResult Function(_Error value) error,
  }) {
    return undecided(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
  }) {
    return undecided?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (undecided != null) {
      return undecided(this);
    }
    return orElse();
  }
}

abstract class _Undecided implements WinnerState {
  const factory _Undecided(String prop) = _$_Undecided;

  String get prop;
  @JsonKey(ignore: true)
  _$UndecidedCopyWith<_Undecided> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoProposalCopyWith<$Res> {
  factory _$NoProposalCopyWith(
          _NoProposal value, $Res Function(_NoProposal) then) =
      __$NoProposalCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoProposalCopyWithImpl<$Res> extends _$WinnerStateCopyWithImpl<$Res>
    implements _$NoProposalCopyWith<$Res> {
  __$NoProposalCopyWithImpl(
      _NoProposal _value, $Res Function(_NoProposal) _then)
      : super(_value, (v) => _then(v as _NoProposal));

  @override
  _NoProposal get _value => super._value as _NoProposal;
}

/// @nodoc

class _$_NoProposal implements _NoProposal {
  const _$_NoProposal();

  @override
  String toString() {
    return 'WinnerState.noProposal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoProposal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String prop, String winner) decided,
    required TResult Function(String prop) undecided,
    required TResult Function() noProposal,
    required TResult Function() error,
  }) {
    return noProposal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
  }) {
    return noProposal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (noProposal != null) {
      return noProposal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Decided value) decided,
    required TResult Function(_Undecided value) undecided,
    required TResult Function(_NoProposal value) noProposal,
    required TResult Function(_Error value) error,
  }) {
    return noProposal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
  }) {
    return noProposal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (noProposal != null) {
      return noProposal(this);
    }
    return orElse();
  }
}

abstract class _NoProposal implements WinnerState {
  const factory _NoProposal() = _$_NoProposal;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$WinnerStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'WinnerState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String prop, String winner) decided,
    required TResult Function(String prop) undecided,
    required TResult Function() noProposal,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String prop, String winner)? decided,
    TResult Function(String prop)? undecided,
    TResult Function()? noProposal,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Decided value) decided,
    required TResult Function(_Undecided value) undecided,
    required TResult Function(_NoProposal value) noProposal,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Decided value)? decided,
    TResult Function(_Undecided value)? undecided,
    TResult Function(_NoProposal value)? noProposal,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WinnerState {
  const factory _Error() = _$_Error;
}

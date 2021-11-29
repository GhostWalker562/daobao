// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'balances_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BalancesStateTearOff {
  const _$BalancesStateTearOff();

  _Loading loading(double daob, double wmatic) {
    return _Loading(
      daob,
      wmatic,
    );
  }

  _Balances balances(double daob, double wmatic) {
    return _Balances(
      daob,
      wmatic,
    );
  }
}

/// @nodoc
const $BalancesState = _$BalancesStateTearOff();

/// @nodoc
mixin _$BalancesState {
  double get daob => throw _privateConstructorUsedError;
  double get wmatic => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double daob, double wmatic) loading,
    required TResult Function(double daob, double wmatic) balances,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double daob, double wmatic)? loading,
    TResult Function(double daob, double wmatic)? balances,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double daob, double wmatic)? loading,
    TResult Function(double daob, double wmatic)? balances,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Balances value) balances,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Balances value)? balances,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Balances value)? balances,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalancesStateCopyWith<BalancesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalancesStateCopyWith<$Res> {
  factory $BalancesStateCopyWith(
          BalancesState value, $Res Function(BalancesState) then) =
      _$BalancesStateCopyWithImpl<$Res>;
  $Res call({double daob, double wmatic});
}

/// @nodoc
class _$BalancesStateCopyWithImpl<$Res>
    implements $BalancesStateCopyWith<$Res> {
  _$BalancesStateCopyWithImpl(this._value, this._then);

  final BalancesState _value;
  // ignore: unused_field
  final $Res Function(BalancesState) _then;

  @override
  $Res call({
    Object? daob = freezed,
    Object? wmatic = freezed,
  }) {
    return _then(_value.copyWith(
      daob: daob == freezed
          ? _value.daob
          : daob // ignore: cast_nullable_to_non_nullable
              as double,
      wmatic: wmatic == freezed
          ? _value.wmatic
          : wmatic // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $BalancesStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({double daob, double wmatic});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$BalancesStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? daob = freezed,
    Object? wmatic = freezed,
  }) {
    return _then(_Loading(
      daob == freezed
          ? _value.daob
          : daob // ignore: cast_nullable_to_non_nullable
              as double,
      wmatic == freezed
          ? _value.wmatic
          : wmatic // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.daob, this.wmatic);

  @override
  final double daob;
  @override
  final double wmatic;

  @override
  String toString() {
    return 'BalancesState.loading(daob: $daob, wmatic: $wmatic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            (identical(other.daob, daob) || other.daob == daob) &&
            (identical(other.wmatic, wmatic) || other.wmatic == wmatic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, daob, wmatic);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double daob, double wmatic) loading,
    required TResult Function(double daob, double wmatic) balances,
  }) {
    return loading(daob, wmatic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double daob, double wmatic)? loading,
    TResult Function(double daob, double wmatic)? balances,
  }) {
    return loading?.call(daob, wmatic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double daob, double wmatic)? loading,
    TResult Function(double daob, double wmatic)? balances,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(daob, wmatic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Balances value) balances,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Balances value)? balances,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Balances value)? balances,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BalancesState {
  const factory _Loading(double daob, double wmatic) = _$_Loading;

  @override
  double get daob;
  @override
  double get wmatic;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BalancesCopyWith<$Res>
    implements $BalancesStateCopyWith<$Res> {
  factory _$BalancesCopyWith(_Balances value, $Res Function(_Balances) then) =
      __$BalancesCopyWithImpl<$Res>;
  @override
  $Res call({double daob, double wmatic});
}

/// @nodoc
class __$BalancesCopyWithImpl<$Res> extends _$BalancesStateCopyWithImpl<$Res>
    implements _$BalancesCopyWith<$Res> {
  __$BalancesCopyWithImpl(_Balances _value, $Res Function(_Balances) _then)
      : super(_value, (v) => _then(v as _Balances));

  @override
  _Balances get _value => super._value as _Balances;

  @override
  $Res call({
    Object? daob = freezed,
    Object? wmatic = freezed,
  }) {
    return _then(_Balances(
      daob == freezed
          ? _value.daob
          : daob // ignore: cast_nullable_to_non_nullable
              as double,
      wmatic == freezed
          ? _value.wmatic
          : wmatic // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Balances implements _Balances {
  const _$_Balances(this.daob, this.wmatic);

  @override
  final double daob;
  @override
  final double wmatic;

  @override
  String toString() {
    return 'BalancesState.balances(daob: $daob, wmatic: $wmatic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Balances &&
            (identical(other.daob, daob) || other.daob == daob) &&
            (identical(other.wmatic, wmatic) || other.wmatic == wmatic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, daob, wmatic);

  @JsonKey(ignore: true)
  @override
  _$BalancesCopyWith<_Balances> get copyWith =>
      __$BalancesCopyWithImpl<_Balances>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double daob, double wmatic) loading,
    required TResult Function(double daob, double wmatic) balances,
  }) {
    return balances(daob, wmatic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double daob, double wmatic)? loading,
    TResult Function(double daob, double wmatic)? balances,
  }) {
    return balances?.call(daob, wmatic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double daob, double wmatic)? loading,
    TResult Function(double daob, double wmatic)? balances,
    required TResult orElse(),
  }) {
    if (balances != null) {
      return balances(daob, wmatic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Balances value) balances,
  }) {
    return balances(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Balances value)? balances,
  }) {
    return balances?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Balances value)? balances,
    required TResult orElse(),
  }) {
    if (balances != null) {
      return balances(this);
    }
    return orElse();
  }
}

abstract class _Balances implements BalancesState {
  const factory _Balances(double daob, double wmatic) = _$_Balances;

  @override
  double get daob;
  @override
  double get wmatic;
  @override
  @JsonKey(ignore: true)
  _$BalancesCopyWith<_Balances> get copyWith =>
      throw _privateConstructorUsedError;
}

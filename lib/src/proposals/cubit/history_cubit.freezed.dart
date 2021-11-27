// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

  _Data data(List<Proposal> live, List<Proposal> history) {
    return _Data(
      live,
      history,
    );
  }

  _Loading loading(List<Proposal> live, List<Proposal> history) {
    return _Loading(
      live,
      history,
    );
  }

  _Error error(List<Proposal> live, List<Proposal> history) {
    return _Error(
      live,
      history,
    );
  }
}

/// @nodoc
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  List<Proposal> get live => throw _privateConstructorUsedError;
  List<Proposal> get history => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Proposal> live, List<Proposal> history) data,
    required TResult Function(List<Proposal> live, List<Proposal> history)
        loading,
    required TResult Function(List<Proposal> live, List<Proposal> history)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Proposal> live, List<Proposal> history)? data,
    TResult Function(List<Proposal> live, List<Proposal> history)? loading,
    TResult Function(List<Proposal> live, List<Proposal> history)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Proposal> live, List<Proposal> history)? data,
    TResult Function(List<Proposal> live, List<Proposal> history)? loading,
    TResult Function(List<Proposal> live, List<Proposal> history)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call({List<Proposal> live, List<Proposal> history});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

  @override
  $Res call({
    Object? live = freezed,
    Object? history = freezed,
  }) {
    return _then(_value.copyWith(
      live: live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as List<Proposal>,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Proposal>,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Proposal> live, List<Proposal> history});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? live = freezed,
    Object? history = freezed,
  }) {
    return _then(_Data(
      live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as List<Proposal>,
      history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Proposal>,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(this.live, this.history);

  @override
  final List<Proposal> live;
  @override
  final List<Proposal> history;

  @override
  String toString() {
    return 'HistoryState.data(live: $live, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.live, live) &&
            const DeepCollectionEquality().equals(other.history, history));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(live),
      const DeepCollectionEquality().hash(history));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Proposal> live, List<Proposal> history) data,
    required TResult Function(List<Proposal> live, List<Proposal> history)
        loading,
    required TResult Function(List<Proposal> live, List<Proposal> history)
        error,
  }) {
    return data(live, history);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Proposal> live, List<Proposal> history)? data,
    TResult Function(List<Proposal> live, List<Proposal> history)? loading,
    TResult Function(List<Proposal> live, List<Proposal> history)? error,
  }) {
    return data?.call(live, history);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Proposal> live, List<Proposal> history)? data,
    TResult Function(List<Proposal> live, List<Proposal> history)? loading,
    TResult Function(List<Proposal> live, List<Proposal> history)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(live, history);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements HistoryState {
  const factory _Data(List<Proposal> live, List<Proposal> history) = _$_Data;

  @override
  List<Proposal> get live;
  @override
  List<Proposal> get history;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<Proposal> live, List<Proposal> history});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? live = freezed,
    Object? history = freezed,
  }) {
    return _then(_Loading(
      live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as List<Proposal>,
      history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Proposal>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.live, this.history);

  @override
  final List<Proposal> live;
  @override
  final List<Proposal> history;

  @override
  String toString() {
    return 'HistoryState.loading(live: $live, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality().equals(other.live, live) &&
            const DeepCollectionEquality().equals(other.history, history));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(live),
      const DeepCollectionEquality().hash(history));

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Proposal> live, List<Proposal> history) data,
    required TResult Function(List<Proposal> live, List<Proposal> history)
        loading,
    required TResult Function(List<Proposal> live, List<Proposal> history)
        error,
  }) {
    return loading(live, history);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Proposal> live, List<Proposal> history)? data,
    TResult Function(List<Proposal> live, List<Proposal> history)? loading,
    TResult Function(List<Proposal> live, List<Proposal> history)? error,
  }) {
    return loading?.call(live, history);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Proposal> live, List<Proposal> history)? data,
    TResult Function(List<Proposal> live, List<Proposal> history)? loading,
    TResult Function(List<Proposal> live, List<Proposal> history)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(live, history);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HistoryState {
  const factory _Loading(List<Proposal> live, List<Proposal> history) =
      _$_Loading;

  @override
  List<Proposal> get live;
  @override
  List<Proposal> get history;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<Proposal> live, List<Proposal> history});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? live = freezed,
    Object? history = freezed,
  }) {
    return _then(_Error(
      live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as List<Proposal>,
      history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<Proposal>,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.live, this.history);

  @override
  final List<Proposal> live;
  @override
  final List<Proposal> history;

  @override
  String toString() {
    return 'HistoryState.error(live: $live, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.live, live) &&
            const DeepCollectionEquality().equals(other.history, history));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(live),
      const DeepCollectionEquality().hash(history));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Proposal> live, List<Proposal> history) data,
    required TResult Function(List<Proposal> live, List<Proposal> history)
        loading,
    required TResult Function(List<Proposal> live, List<Proposal> history)
        error,
  }) {
    return error(live, history);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Proposal> live, List<Proposal> history)? data,
    TResult Function(List<Proposal> live, List<Proposal> history)? loading,
    TResult Function(List<Proposal> live, List<Proposal> history)? error,
  }) {
    return error?.call(live, history);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Proposal> live, List<Proposal> history)? data,
    TResult Function(List<Proposal> live, List<Proposal> history)? loading,
    TResult Function(List<Proposal> live, List<Proposal> history)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(live, history);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HistoryState {
  const factory _Error(List<Proposal> live, List<Proposal> history) = _$_Error;

  @override
  List<Proposal> get live;
  @override
  List<Proposal> get history;
  @override
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

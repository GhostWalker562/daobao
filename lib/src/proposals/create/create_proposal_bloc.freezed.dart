// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_proposal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateProposalEventTearOff {
  const _$CreateProposalEventTearOff();

  AddComb createAddComb(String title, String summary, String content) {
    return AddComb(
      title,
      summary,
      content,
    );
  }

  SwitchBackground createSwitchBackground(
      String title, String summary, String link) {
    return SwitchBackground(
      title,
      summary,
      link,
    );
  }
}

/// @nodoc
const $CreateProposalEvent = _$CreateProposalEventTearOff();

/// @nodoc
mixin _$CreateProposalEvent {
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String summary, String content)
        createAddComb,
    required TResult Function(String title, String summary, String link)
        createSwitchBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String summary, String content)?
        createAddComb,
    TResult Function(String title, String summary, String link)?
        createSwitchBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String summary, String content)?
        createAddComb,
    TResult Function(String title, String summary, String link)?
        createSwitchBackground,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddComb value) createAddComb,
    required TResult Function(SwitchBackground value) createSwitchBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddComb value)? createAddComb,
    TResult Function(SwitchBackground value)? createSwitchBackground,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddComb value)? createAddComb,
    TResult Function(SwitchBackground value)? createSwitchBackground,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateProposalEventCopyWith<CreateProposalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProposalEventCopyWith<$Res> {
  factory $CreateProposalEventCopyWith(
          CreateProposalEvent value, $Res Function(CreateProposalEvent) then) =
      _$CreateProposalEventCopyWithImpl<$Res>;
  $Res call({String title, String summary});
}

/// @nodoc
class _$CreateProposalEventCopyWithImpl<$Res>
    implements $CreateProposalEventCopyWith<$Res> {
  _$CreateProposalEventCopyWithImpl(this._value, this._then);

  final CreateProposalEvent _value;
  // ignore: unused_field
  final $Res Function(CreateProposalEvent) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $AddCombCopyWith<$Res>
    implements $CreateProposalEventCopyWith<$Res> {
  factory $AddCombCopyWith(AddComb value, $Res Function(AddComb) then) =
      _$AddCombCopyWithImpl<$Res>;
  @override
  $Res call({String title, String summary, String content});
}

/// @nodoc
class _$AddCombCopyWithImpl<$Res>
    extends _$CreateProposalEventCopyWithImpl<$Res>
    implements $AddCombCopyWith<$Res> {
  _$AddCombCopyWithImpl(AddComb _value, $Res Function(AddComb) _then)
      : super(_value, (v) => _then(v as AddComb));

  @override
  AddComb get _value => super._value as AddComb;

  @override
  $Res call({
    Object? title = freezed,
    Object? summary = freezed,
    Object? content = freezed,
  }) {
    return _then(AddComb(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddComb implements AddComb {
  const _$AddComb(this.title, this.summary, this.content);

  @override
  final String title;
  @override
  final String summary;
  @override
  final String content;

  @override
  String toString() {
    return 'CreateProposalEvent.createAddComb(title: $title, summary: $summary, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddComb &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, summary, content);

  @JsonKey(ignore: true)
  @override
  $AddCombCopyWith<AddComb> get copyWith =>
      _$AddCombCopyWithImpl<AddComb>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String summary, String content)
        createAddComb,
    required TResult Function(String title, String summary, String link)
        createSwitchBackground,
  }) {
    return createAddComb(title, summary, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String summary, String content)?
        createAddComb,
    TResult Function(String title, String summary, String link)?
        createSwitchBackground,
  }) {
    return createAddComb?.call(title, summary, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String summary, String content)?
        createAddComb,
    TResult Function(String title, String summary, String link)?
        createSwitchBackground,
    required TResult orElse(),
  }) {
    if (createAddComb != null) {
      return createAddComb(title, summary, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddComb value) createAddComb,
    required TResult Function(SwitchBackground value) createSwitchBackground,
  }) {
    return createAddComb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddComb value)? createAddComb,
    TResult Function(SwitchBackground value)? createSwitchBackground,
  }) {
    return createAddComb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddComb value)? createAddComb,
    TResult Function(SwitchBackground value)? createSwitchBackground,
    required TResult orElse(),
  }) {
    if (createAddComb != null) {
      return createAddComb(this);
    }
    return orElse();
  }
}

abstract class AddComb implements CreateProposalEvent {
  const factory AddComb(String title, String summary, String content) =
      _$AddComb;

  @override
  String get title;
  @override
  String get summary;
  String get content;
  @override
  @JsonKey(ignore: true)
  $AddCombCopyWith<AddComb> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchBackgroundCopyWith<$Res>
    implements $CreateProposalEventCopyWith<$Res> {
  factory $SwitchBackgroundCopyWith(
          SwitchBackground value, $Res Function(SwitchBackground) then) =
      _$SwitchBackgroundCopyWithImpl<$Res>;
  @override
  $Res call({String title, String summary, String link});
}

/// @nodoc
class _$SwitchBackgroundCopyWithImpl<$Res>
    extends _$CreateProposalEventCopyWithImpl<$Res>
    implements $SwitchBackgroundCopyWith<$Res> {
  _$SwitchBackgroundCopyWithImpl(
      SwitchBackground _value, $Res Function(SwitchBackground) _then)
      : super(_value, (v) => _then(v as SwitchBackground));

  @override
  SwitchBackground get _value => super._value as SwitchBackground;

  @override
  $Res call({
    Object? title = freezed,
    Object? summary = freezed,
    Object? link = freezed,
  }) {
    return _then(SwitchBackground(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwitchBackground implements SwitchBackground {
  const _$SwitchBackground(this.title, this.summary, this.link);

  @override
  final String title;
  @override
  final String summary;
  @override
  final String link;

  @override
  String toString() {
    return 'CreateProposalEvent.createSwitchBackground(title: $title, summary: $summary, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwitchBackground &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, summary, link);

  @JsonKey(ignore: true)
  @override
  $SwitchBackgroundCopyWith<SwitchBackground> get copyWith =>
      _$SwitchBackgroundCopyWithImpl<SwitchBackground>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String summary, String content)
        createAddComb,
    required TResult Function(String title, String summary, String link)
        createSwitchBackground,
  }) {
    return createSwitchBackground(title, summary, link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title, String summary, String content)?
        createAddComb,
    TResult Function(String title, String summary, String link)?
        createSwitchBackground,
  }) {
    return createSwitchBackground?.call(title, summary, link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String summary, String content)?
        createAddComb,
    TResult Function(String title, String summary, String link)?
        createSwitchBackground,
    required TResult orElse(),
  }) {
    if (createSwitchBackground != null) {
      return createSwitchBackground(title, summary, link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddComb value) createAddComb,
    required TResult Function(SwitchBackground value) createSwitchBackground,
  }) {
    return createSwitchBackground(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddComb value)? createAddComb,
    TResult Function(SwitchBackground value)? createSwitchBackground,
  }) {
    return createSwitchBackground?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddComb value)? createAddComb,
    TResult Function(SwitchBackground value)? createSwitchBackground,
    required TResult orElse(),
  }) {
    if (createSwitchBackground != null) {
      return createSwitchBackground(this);
    }
    return orElse();
  }
}

abstract class SwitchBackground implements CreateProposalEvent {
  const factory SwitchBackground(String title, String summary, String link) =
      _$SwitchBackground;

  @override
  String get title;
  @override
  String get summary;
  String get link;
  @override
  @JsonKey(ignore: true)
  $SwitchBackgroundCopyWith<SwitchBackground> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateProposalStateTearOff {
  const _$CreateProposalStateTearOff();

  _Unloaded unloaded() {
    return const _Unloaded();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Success success() {
    return const _Success();
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $CreateProposalState = _$CreateProposalStateTearOff();

/// @nodoc
mixin _$CreateProposalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unloaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unloaded value) unloaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProposalStateCopyWith<$Res> {
  factory $CreateProposalStateCopyWith(
          CreateProposalState value, $Res Function(CreateProposalState) then) =
      _$CreateProposalStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProposalStateCopyWithImpl<$Res>
    implements $CreateProposalStateCopyWith<$Res> {
  _$CreateProposalStateCopyWithImpl(this._value, this._then);

  final CreateProposalState _value;
  // ignore: unused_field
  final $Res Function(CreateProposalState) _then;
}

/// @nodoc
abstract class _$UnloadedCopyWith<$Res> {
  factory _$UnloadedCopyWith(_Unloaded value, $Res Function(_Unloaded) then) =
      __$UnloadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnloadedCopyWithImpl<$Res>
    extends _$CreateProposalStateCopyWithImpl<$Res>
    implements _$UnloadedCopyWith<$Res> {
  __$UnloadedCopyWithImpl(_Unloaded _value, $Res Function(_Unloaded) _then)
      : super(_value, (v) => _then(v as _Unloaded));

  @override
  _Unloaded get _value => super._value as _Unloaded;
}

/// @nodoc

class _$_Unloaded implements _Unloaded {
  const _$_Unloaded();

  @override
  String toString() {
    return 'CreateProposalState.unloaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unloaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unloaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return unloaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return unloaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (unloaded != null) {
      return unloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unloaded value) unloaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return unloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return unloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unloaded != null) {
      return unloaded(this);
    }
    return orElse();
  }
}

abstract class _Unloaded implements CreateProposalState {
  const factory _Unloaded() = _$_Unloaded;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$CreateProposalStateCopyWithImpl<$Res>
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
    return 'CreateProposalState.loading()';
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
    required TResult Function() unloaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_Unloaded value) unloaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CreateProposalState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$CreateProposalStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'CreateProposalState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unloaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unloaded value) unloaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CreateProposalState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CreateProposalStateCopyWithImpl<$Res>
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
    return 'CreateProposalState.error()';
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
    required TResult Function() unloaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unloaded,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(_Unloaded value) unloaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unloaded value)? unloaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CreateProposalState {
  const factory _Error() = _$_Error;
}

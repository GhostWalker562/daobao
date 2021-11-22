// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'proposals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProposalTearOff {
  const _$ProposalTearOff();

  _Proposal call(int id, ProposalType type, int end, ProposalStatus status,
      {@JsonKey(name: 'data') String? cid,
      @JsonKey(name: 'data1') int? settingData}) {
    return _Proposal(
      id,
      type,
      end,
      status,
      cid: cid,
      settingData: settingData,
    );
  }
}

/// @nodoc
const $Proposal = _$ProposalTearOff();

/// @nodoc
mixin _$Proposal {
  int get id => throw _privateConstructorUsedError;
  ProposalType get type => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  ProposalStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String? get cid => throw _privateConstructorUsedError;
  @JsonKey(name: 'data1')
  int? get settingData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProposalCopyWith<Proposal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalCopyWith<$Res> {
  factory $ProposalCopyWith(Proposal value, $Res Function(Proposal) then) =
      _$ProposalCopyWithImpl<$Res>;
  $Res call(
      {int id,
      ProposalType type,
      int end,
      ProposalStatus status,
      @JsonKey(name: 'data') String? cid,
      @JsonKey(name: 'data1') int? settingData});
}

/// @nodoc
class _$ProposalCopyWithImpl<$Res> implements $ProposalCopyWith<$Res> {
  _$ProposalCopyWithImpl(this._value, this._then);

  final Proposal _value;
  // ignore: unused_field
  final $Res Function(Proposal) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? end = freezed,
    Object? status = freezed,
    Object? cid = freezed,
    Object? settingData = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProposalType,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProposalStatus,
      cid: cid == freezed
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      settingData: settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ProposalCopyWith<$Res> implements $ProposalCopyWith<$Res> {
  factory _$ProposalCopyWith(_Proposal value, $Res Function(_Proposal) then) =
      __$ProposalCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      ProposalType type,
      int end,
      ProposalStatus status,
      @JsonKey(name: 'data') String? cid,
      @JsonKey(name: 'data1') int? settingData});
}

/// @nodoc
class __$ProposalCopyWithImpl<$Res> extends _$ProposalCopyWithImpl<$Res>
    implements _$ProposalCopyWith<$Res> {
  __$ProposalCopyWithImpl(_Proposal _value, $Res Function(_Proposal) _then)
      : super(_value, (v) => _then(v as _Proposal));

  @override
  _Proposal get _value => super._value as _Proposal;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? end = freezed,
    Object? status = freezed,
    Object? cid = freezed,
    Object? settingData = freezed,
  }) {
    return _then(_Proposal(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProposalType,
      end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProposalStatus,
      cid: cid == freezed
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      settingData: settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Proposal implements _Proposal {
  const _$_Proposal(this.id, this.type, this.end, this.status,
      {@JsonKey(name: 'data') this.cid,
      @JsonKey(name: 'data1') this.settingData});

  @override
  final int id;
  @override
  final ProposalType type;
  @override
  final int end;
  @override
  final ProposalStatus status;
  @override
  @JsonKey(name: 'data')
  final String? cid;
  @override
  @JsonKey(name: 'data1')
  final int? settingData;

  @override
  String toString() {
    return 'Proposal(id: $id, type: $type, end: $end, status: $status, cid: $cid, settingData: $settingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Proposal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.settingData, settingData) ||
                other.settingData == settingData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, end, status, cid, settingData);

  @JsonKey(ignore: true)
  @override
  _$ProposalCopyWith<_Proposal> get copyWith =>
      __$ProposalCopyWithImpl<_Proposal>(this, _$identity);
}

abstract class _Proposal implements Proposal {
  const factory _Proposal(
      int id, ProposalType type, int end, ProposalStatus status,
      {@JsonKey(name: 'data') String? cid,
      @JsonKey(name: 'data1') int? settingData}) = _$_Proposal;

  @override
  int get id;
  @override
  ProposalType get type;
  @override
  int get end;
  @override
  ProposalStatus get status;
  @override
  @JsonKey(name: 'data')
  String? get cid;
  @override
  @JsonKey(name: 'data1')
  int? get settingData;
  @override
  @JsonKey(ignore: true)
  _$ProposalCopyWith<_Proposal> get copyWith =>
      throw _privateConstructorUsedError;
}

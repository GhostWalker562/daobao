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

Proposal _$ProposalFromJson(Map<String, dynamic> json) {
  return ProposalData.fromJson(json);
}

/// @nodoc
class _$ProposalTearOff {
  const _$ProposalTearOff();

  ProposalData call(
      String id,
      @JsonKey(name: 'data') String? cid,
      @JsonKey(name: 'data1') int? settingData,
      @ProposalTypeConverter() ProposalType type,
      int end,
      List<dynamic> voters,
      ProposalStatus status,
      @JsonKey(name: 'forvotes') int forVotes,
      @JsonKey(name: 'totalvotes') int totalVotes,
      int quorumSnapshot) {
    return ProposalData(
      id,
      cid,
      settingData,
      type,
      end,
      voters,
      status,
      forVotes,
      totalVotes,
      quorumSnapshot,
    );
  }

  Proposal fromJson(Map<String, Object?> json) {
    return Proposal.fromJson(json);
  }
}

/// @nodoc
const $Proposal = _$ProposalTearOff();

/// @nodoc
mixin _$Proposal {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String? get cid => throw _privateConstructorUsedError;
  @JsonKey(name: 'data1')
  int? get settingData => throw _privateConstructorUsedError;
  @ProposalTypeConverter()
  ProposalType get type => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  List<dynamic> get voters => throw _privateConstructorUsedError;
  ProposalStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'forvotes')
  int get forVotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalvotes')
  int get totalVotes => throw _privateConstructorUsedError;
  int get quorumSnapshot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProposalCopyWith<Proposal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProposalCopyWith<$Res> {
  factory $ProposalCopyWith(Proposal value, $Res Function(Proposal) then) =
      _$ProposalCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'data') String? cid,
      @JsonKey(name: 'data1') int? settingData,
      @ProposalTypeConverter() ProposalType type,
      int end,
      List<dynamic> voters,
      ProposalStatus status,
      @JsonKey(name: 'forvotes') int forVotes,
      @JsonKey(name: 'totalvotes') int totalVotes,
      int quorumSnapshot});
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
    Object? cid = freezed,
    Object? settingData = freezed,
    Object? type = freezed,
    Object? end = freezed,
    Object? voters = freezed,
    Object? status = freezed,
    Object? forVotes = freezed,
    Object? totalVotes = freezed,
    Object? quorumSnapshot = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cid: cid == freezed
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      settingData: settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProposalType,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      voters: voters == freezed
          ? _value.voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProposalStatus,
      forVotes: forVotes == freezed
          ? _value.forVotes
          : forVotes // ignore: cast_nullable_to_non_nullable
              as int,
      totalVotes: totalVotes == freezed
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
      quorumSnapshot: quorumSnapshot == freezed
          ? _value.quorumSnapshot
          : quorumSnapshot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $ProposalDataCopyWith<$Res> implements $ProposalCopyWith<$Res> {
  factory $ProposalDataCopyWith(
          ProposalData value, $Res Function(ProposalData) then) =
      _$ProposalDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'data') String? cid,
      @JsonKey(name: 'data1') int? settingData,
      @ProposalTypeConverter() ProposalType type,
      int end,
      List<dynamic> voters,
      ProposalStatus status,
      @JsonKey(name: 'forvotes') int forVotes,
      @JsonKey(name: 'totalvotes') int totalVotes,
      int quorumSnapshot});
}

/// @nodoc
class _$ProposalDataCopyWithImpl<$Res> extends _$ProposalCopyWithImpl<$Res>
    implements $ProposalDataCopyWith<$Res> {
  _$ProposalDataCopyWithImpl(
      ProposalData _value, $Res Function(ProposalData) _then)
      : super(_value, (v) => _then(v as ProposalData));

  @override
  ProposalData get _value => super._value as ProposalData;

  @override
  $Res call({
    Object? id = freezed,
    Object? cid = freezed,
    Object? settingData = freezed,
    Object? type = freezed,
    Object? end = freezed,
    Object? voters = freezed,
    Object? status = freezed,
    Object? forVotes = freezed,
    Object? totalVotes = freezed,
    Object? quorumSnapshot = freezed,
  }) {
    return _then(ProposalData(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cid == freezed
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      settingData == freezed
          ? _value.settingData
          : settingData // ignore: cast_nullable_to_non_nullable
              as int?,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProposalType,
      end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      voters == freezed
          ? _value.voters
          : voters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProposalStatus,
      forVotes == freezed
          ? _value.forVotes
          : forVotes // ignore: cast_nullable_to_non_nullable
              as int,
      totalVotes == freezed
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
      quorumSnapshot == freezed
          ? _value.quorumSnapshot
          : quorumSnapshot // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProposalData implements ProposalData {
  const _$ProposalData(
      this.id,
      @JsonKey(name: 'data') this.cid,
      @JsonKey(name: 'data1') this.settingData,
      @ProposalTypeConverter() this.type,
      this.end,
      this.voters,
      this.status,
      @JsonKey(name: 'forvotes') this.forVotes,
      @JsonKey(name: 'totalvotes') this.totalVotes,
      this.quorumSnapshot);

  factory _$ProposalData.fromJson(Map<String, dynamic> json) =>
      _$$ProposalDataFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'data')
  final String? cid;
  @override
  @JsonKey(name: 'data1')
  final int? settingData;
  @override
  @ProposalTypeConverter()
  final ProposalType type;
  @override
  final int end;
  @override
  final List<dynamic> voters;
  @override
  final ProposalStatus status;
  @override
  @JsonKey(name: 'forvotes')
  final int forVotes;
  @override
  @JsonKey(name: 'totalvotes')
  final int totalVotes;
  @override
  final int quorumSnapshot;

  @override
  String toString() {
    return 'Proposal(id: $id, cid: $cid, settingData: $settingData, type: $type, end: $end, voters: $voters, status: $status, forVotes: $forVotes, totalVotes: $totalVotes, quorumSnapshot: $quorumSnapshot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProposalData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.settingData, settingData) ||
                other.settingData == settingData) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.end, end) || other.end == end) &&
            const DeepCollectionEquality().equals(other.voters, voters) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.forVotes, forVotes) ||
                other.forVotes == forVotes) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            (identical(other.quorumSnapshot, quorumSnapshot) ||
                other.quorumSnapshot == quorumSnapshot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cid,
      settingData,
      type,
      end,
      const DeepCollectionEquality().hash(voters),
      status,
      forVotes,
      totalVotes,
      quorumSnapshot);

  @JsonKey(ignore: true)
  @override
  $ProposalDataCopyWith<ProposalData> get copyWith =>
      _$ProposalDataCopyWithImpl<ProposalData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProposalDataToJson(this);
  }
}

abstract class ProposalData implements Proposal {
  const factory ProposalData(
      String id,
      @JsonKey(name: 'data') String? cid,
      @JsonKey(name: 'data1') int? settingData,
      @ProposalTypeConverter() ProposalType type,
      int end,
      List<dynamic> voters,
      ProposalStatus status,
      @JsonKey(name: 'forvotes') int forVotes,
      @JsonKey(name: 'totalvotes') int totalVotes,
      int quorumSnapshot) = _$ProposalData;

  factory ProposalData.fromJson(Map<String, dynamic> json) =
      _$ProposalData.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'data')
  String? get cid;
  @override
  @JsonKey(name: 'data1')
  int? get settingData;
  @override
  @ProposalTypeConverter()
  ProposalType get type;
  @override
  int get end;
  @override
  List<dynamic> get voters;
  @override
  ProposalStatus get status;
  @override
  @JsonKey(name: 'forvotes')
  int get forVotes;
  @override
  @JsonKey(name: 'totalvotes')
  int get totalVotes;
  @override
  int get quorumSnapshot;
  @override
  @JsonKey(ignore: true)
  $ProposalDataCopyWith<ProposalData> get copyWith =>
      throw _privateConstructorUsedError;
}

Module _$ModuleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return ModuleData.fromJson(json);
    case 'background':
      return ModuleBackgroundData.fromJson(json);
    case 'comb':
      return ModuleCombData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Module',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ModuleTearOff {
  const _$ModuleTearOff();

  ModuleData call(String title, String summary) {
    return ModuleData(
      title,
      summary,
    );
  }

  ModuleBackgroundData background(String title, String summary, String cid) {
    return ModuleBackgroundData(
      title,
      summary,
      cid,
    );
  }

  ModuleCombData comb(String title, String summary, String cid) {
    return ModuleCombData(
      title,
      summary,
      cid,
    );
  }

  Module fromJson(Map<String, Object?> json) {
    return Module.fromJson(json);
  }
}

/// @nodoc
const $Module = _$ModuleTearOff();

/// @nodoc
mixin _$Module {
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String summary) $default, {
    required TResult Function(String title, String summary, String cid)
        background,
    required TResult Function(String title, String summary, String cid) comb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String title, String summary)? $default, {
    TResult Function(String title, String summary, String cid)? background,
    TResult Function(String title, String summary, String cid)? comb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String summary)? $default, {
    TResult Function(String title, String summary, String cid)? background,
    TResult Function(String title, String summary, String cid)? comb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ModuleData value) $default, {
    required TResult Function(ModuleBackgroundData value) background,
    required TResult Function(ModuleCombData value) comb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ModuleData value)? $default, {
    TResult Function(ModuleBackgroundData value)? background,
    TResult Function(ModuleCombData value)? comb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ModuleData value)? $default, {
    TResult Function(ModuleBackgroundData value)? background,
    TResult Function(ModuleCombData value)? comb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModuleCopyWith<Module> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleCopyWith<$Res> {
  factory $ModuleCopyWith(Module value, $Res Function(Module) then) =
      _$ModuleCopyWithImpl<$Res>;
  $Res call({String title, String summary});
}

/// @nodoc
class _$ModuleCopyWithImpl<$Res> implements $ModuleCopyWith<$Res> {
  _$ModuleCopyWithImpl(this._value, this._then);

  final Module _value;
  // ignore: unused_field
  final $Res Function(Module) _then;

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
abstract class $ModuleDataCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory $ModuleDataCopyWith(
          ModuleData value, $Res Function(ModuleData) then) =
      _$ModuleDataCopyWithImpl<$Res>;
  @override
  $Res call({String title, String summary});
}

/// @nodoc
class _$ModuleDataCopyWithImpl<$Res> extends _$ModuleCopyWithImpl<$Res>
    implements $ModuleDataCopyWith<$Res> {
  _$ModuleDataCopyWithImpl(ModuleData _value, $Res Function(ModuleData) _then)
      : super(_value, (v) => _then(v as ModuleData));

  @override
  ModuleData get _value => super._value as ModuleData;

  @override
  $Res call({
    Object? title = freezed,
    Object? summary = freezed,
  }) {
    return _then(ModuleData(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleData extends ModuleData {
  const _$ModuleData(this.title, this.summary, {String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$ModuleData.fromJson(Map<String, dynamic> json) =>
      _$$ModuleDataFromJson(json);

  @override
  final String title;
  @override
  final String summary;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Module(title: $title, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModuleData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, summary);

  @JsonKey(ignore: true)
  @override
  $ModuleDataCopyWith<ModuleData> get copyWith =>
      _$ModuleDataCopyWithImpl<ModuleData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String summary) $default, {
    required TResult Function(String title, String summary, String cid)
        background,
    required TResult Function(String title, String summary, String cid) comb,
  }) {
    return $default(title, summary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String title, String summary)? $default, {
    TResult Function(String title, String summary, String cid)? background,
    TResult Function(String title, String summary, String cid)? comb,
  }) {
    return $default?.call(title, summary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String summary)? $default, {
    TResult Function(String title, String summary, String cid)? background,
    TResult Function(String title, String summary, String cid)? comb,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(title, summary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ModuleData value) $default, {
    required TResult Function(ModuleBackgroundData value) background,
    required TResult Function(ModuleCombData value) comb,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ModuleData value)? $default, {
    TResult Function(ModuleBackgroundData value)? background,
    TResult Function(ModuleCombData value)? comb,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ModuleData value)? $default, {
    TResult Function(ModuleBackgroundData value)? background,
    TResult Function(ModuleCombData value)? comb,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleDataToJson(this);
  }
}

abstract class ModuleData extends Module {
  const factory ModuleData(String title, String summary) = _$ModuleData;
  const ModuleData._() : super._();

  factory ModuleData.fromJson(Map<String, dynamic> json) =
      _$ModuleData.fromJson;

  @override
  String get title;
  @override
  String get summary;
  @override
  @JsonKey(ignore: true)
  $ModuleDataCopyWith<ModuleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleBackgroundDataCopyWith<$Res>
    implements $ModuleCopyWith<$Res> {
  factory $ModuleBackgroundDataCopyWith(ModuleBackgroundData value,
          $Res Function(ModuleBackgroundData) then) =
      _$ModuleBackgroundDataCopyWithImpl<$Res>;
  @override
  $Res call({String title, String summary, String cid});
}

/// @nodoc
class _$ModuleBackgroundDataCopyWithImpl<$Res>
    extends _$ModuleCopyWithImpl<$Res>
    implements $ModuleBackgroundDataCopyWith<$Res> {
  _$ModuleBackgroundDataCopyWithImpl(
      ModuleBackgroundData _value, $Res Function(ModuleBackgroundData) _then)
      : super(_value, (v) => _then(v as ModuleBackgroundData));

  @override
  ModuleBackgroundData get _value => super._value as ModuleBackgroundData;

  @override
  $Res call({
    Object? title = freezed,
    Object? summary = freezed,
    Object? cid = freezed,
  }) {
    return _then(ModuleBackgroundData(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      cid == freezed
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleBackgroundData extends ModuleBackgroundData {
  const _$ModuleBackgroundData(this.title, this.summary, this.cid,
      {String? $type})
      : $type = $type ?? 'background',
        super._();

  factory _$ModuleBackgroundData.fromJson(Map<String, dynamic> json) =>
      _$$ModuleBackgroundDataFromJson(json);

  @override
  final String title;
  @override
  final String summary;
  @override
  final String cid;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Module.background(title: $title, summary: $summary, cid: $cid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModuleBackgroundData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.cid, cid) || other.cid == cid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, summary, cid);

  @JsonKey(ignore: true)
  @override
  $ModuleBackgroundDataCopyWith<ModuleBackgroundData> get copyWith =>
      _$ModuleBackgroundDataCopyWithImpl<ModuleBackgroundData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String summary) $default, {
    required TResult Function(String title, String summary, String cid)
        background,
    required TResult Function(String title, String summary, String cid) comb,
  }) {
    return background(title, summary, cid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String title, String summary)? $default, {
    TResult Function(String title, String summary, String cid)? background,
    TResult Function(String title, String summary, String cid)? comb,
  }) {
    return background?.call(title, summary, cid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String summary)? $default, {
    TResult Function(String title, String summary, String cid)? background,
    TResult Function(String title, String summary, String cid)? comb,
    required TResult orElse(),
  }) {
    if (background != null) {
      return background(title, summary, cid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ModuleData value) $default, {
    required TResult Function(ModuleBackgroundData value) background,
    required TResult Function(ModuleCombData value) comb,
  }) {
    return background(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ModuleData value)? $default, {
    TResult Function(ModuleBackgroundData value)? background,
    TResult Function(ModuleCombData value)? comb,
  }) {
    return background?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ModuleData value)? $default, {
    TResult Function(ModuleBackgroundData value)? background,
    TResult Function(ModuleCombData value)? comb,
    required TResult orElse(),
  }) {
    if (background != null) {
      return background(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleBackgroundDataToJson(this);
  }
}

abstract class ModuleBackgroundData extends Module {
  const factory ModuleBackgroundData(String title, String summary, String cid) =
      _$ModuleBackgroundData;
  const ModuleBackgroundData._() : super._();

  factory ModuleBackgroundData.fromJson(Map<String, dynamic> json) =
      _$ModuleBackgroundData.fromJson;

  @override
  String get title;
  @override
  String get summary;
  String get cid;
  @override
  @JsonKey(ignore: true)
  $ModuleBackgroundDataCopyWith<ModuleBackgroundData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleCombDataCopyWith<$Res> implements $ModuleCopyWith<$Res> {
  factory $ModuleCombDataCopyWith(
          ModuleCombData value, $Res Function(ModuleCombData) then) =
      _$ModuleCombDataCopyWithImpl<$Res>;
  @override
  $Res call({String title, String summary, String cid});
}

/// @nodoc
class _$ModuleCombDataCopyWithImpl<$Res> extends _$ModuleCopyWithImpl<$Res>
    implements $ModuleCombDataCopyWith<$Res> {
  _$ModuleCombDataCopyWithImpl(
      ModuleCombData _value, $Res Function(ModuleCombData) _then)
      : super(_value, (v) => _then(v as ModuleCombData));

  @override
  ModuleCombData get _value => super._value as ModuleCombData;

  @override
  $Res call({
    Object? title = freezed,
    Object? summary = freezed,
    Object? cid = freezed,
  }) {
    return _then(ModuleCombData(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      cid == freezed
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModuleCombData extends ModuleCombData {
  const _$ModuleCombData(this.title, this.summary, this.cid, {String? $type})
      : $type = $type ?? 'comb',
        super._();

  factory _$ModuleCombData.fromJson(Map<String, dynamic> json) =>
      _$$ModuleCombDataFromJson(json);

  @override
  final String title;
  @override
  final String summary;
  @override
  final String cid;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Module.comb(title: $title, summary: $summary, cid: $cid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModuleCombData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.cid, cid) || other.cid == cid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, summary, cid);

  @JsonKey(ignore: true)
  @override
  $ModuleCombDataCopyWith<ModuleCombData> get copyWith =>
      _$ModuleCombDataCopyWithImpl<ModuleCombData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String summary) $default, {
    required TResult Function(String title, String summary, String cid)
        background,
    required TResult Function(String title, String summary, String cid) comb,
  }) {
    return comb(title, summary, cid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String title, String summary)? $default, {
    TResult Function(String title, String summary, String cid)? background,
    TResult Function(String title, String summary, String cid)? comb,
  }) {
    return comb?.call(title, summary, cid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String summary)? $default, {
    TResult Function(String title, String summary, String cid)? background,
    TResult Function(String title, String summary, String cid)? comb,
    required TResult orElse(),
  }) {
    if (comb != null) {
      return comb(title, summary, cid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ModuleData value) $default, {
    required TResult Function(ModuleBackgroundData value) background,
    required TResult Function(ModuleCombData value) comb,
  }) {
    return comb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ModuleData value)? $default, {
    TResult Function(ModuleBackgroundData value)? background,
    TResult Function(ModuleCombData value)? comb,
  }) {
    return comb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ModuleData value)? $default, {
    TResult Function(ModuleBackgroundData value)? background,
    TResult Function(ModuleCombData value)? comb,
    required TResult orElse(),
  }) {
    if (comb != null) {
      return comb(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ModuleCombDataToJson(this);
  }
}

abstract class ModuleCombData extends Module {
  const factory ModuleCombData(String title, String summary, String cid) =
      _$ModuleCombData;
  const ModuleCombData._() : super._();

  factory ModuleCombData.fromJson(Map<String, dynamic> json) =
      _$ModuleCombData.fromJson;

  @override
  String get title;
  @override
  String get summary;
  String get cid;
  @override
  @JsonKey(ignore: true)
  $ModuleCombDataCopyWith<ModuleCombData> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proposals.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProposalData _$$ProposalDataFromJson(Map<String, dynamic> json) =>
    _$ProposalData(
      json['id'] as String,
      json['data'] as String?,
      json['data1'] as int?,
      const ProposalTypeConverter().fromJson(json['type'] as int),
      json['end'] as int,
      json['voters'] as List<dynamic>,
      $enumDecode(_$ProposalStatusEnumMap, json['status']),
      json['forvotes'] as int,
      json['totalvotes'] as int,
      json['quorumSnapshot'] as int,
    );

Map<String, dynamic> _$$ProposalDataToJson(_$ProposalData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.cid,
      'data1': instance.settingData,
      'type': const ProposalTypeConverter().toJson(instance.type),
      'end': instance.end,
      'voters': instance.voters,
      'status': _$ProposalStatusEnumMap[instance.status],
      'forvotes': instance.forVotes,
      'totalvotes': instance.totalVotes,
      'quorumSnapshot': instance.quorumSnapshot,
    };

const _$ProposalStatusEnumMap = {
  ProposalStatus.passed: 'passed',
  ProposalStatus.failed: 'failed',
  ProposalStatus.inProgress: 'inProgress',
  ProposalStatus.removed: 'removed',
};

_$ModuleData _$$ModuleDataFromJson(Map<String, dynamic> json) => _$ModuleData(
      json['title'] as String,
      json['summary'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ModuleDataToJson(_$ModuleData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'summary': instance.summary,
      'runtimeType': instance.$type,
    };

_$ModuleBackgroundData _$$ModuleBackgroundDataFromJson(
        Map<String, dynamic> json) =>
    _$ModuleBackgroundData(
      json['title'] as String,
      json['summary'] as String,
      json['cid'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ModuleBackgroundDataToJson(
        _$ModuleBackgroundData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'summary': instance.summary,
      'cid': instance.cid,
      'runtimeType': instance.$type,
    };

_$ModuleCombData _$$ModuleCombDataFromJson(Map<String, dynamic> json) =>
    _$ModuleCombData(
      json['title'] as String,
      json['summary'] as String,
      json['cid'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ModuleCombDataToJson(_$ModuleCombData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'summary': instance.summary,
      'cid': instance.cid,
      'runtimeType': instance.$type,
    };

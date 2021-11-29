import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'proposals.freezed.dart';
part 'proposals.g.dart';

enum ProposalType { threshold, quorum, locktime, addModule, removeModule }
enum ProposalStatus { passed, failed, inProgress, removed }

@freezed
class Proposal with _$Proposal {
  const factory Proposal(
    String id,
    @JsonKey(name: 'data') String? cid,
    @JsonKey(name: 'data1') int? settingData,
    @ProposalTypeConverter() ProposalType type,
    int end,
    List<dynamic> voters,
    ProposalStatus status,
    @JsonKey(name: 'forvotes') int forVotes,
    @JsonKey(name: 'totalvotes') int totalVotes,
    int quorumSnapshot,
  ) = ProposalData;

  factory Proposal.fromJson(Map<String, dynamic> json) =>
      _$ProposalFromJson(json);
}

@freezed
class Module with _$Module {
  const Module._();
  const factory Module(String title, String summary) = ModuleData;
  const factory Module.background(String title, String summary, String cid) =
      ModuleBackgroundData;
  const factory Module.comb(String title, String summary, String cid) =
      ModuleCombData;

  String toRawJson() => json.encode(toJson());

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
}

class ModuleProposalLink {
  final Module module;
  final Proposal proposal;

  const ModuleProposalLink(this.module, this.proposal);
}

class ProposalTypeConverter implements JsonConverter<ProposalType, int> {
  const ProposalTypeConverter();

  @override
  ProposalType fromJson(int indicator) {
    return ProposalType.values[indicator];
  }

  @override
  int toJson(ProposalType type) => type.index;
}

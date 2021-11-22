import 'package:freezed_annotation/freezed_annotation.dart';

part 'proposals.freezed.dart';

enum ProposalType { threshold, quorum, locktime, addMdoule, removeModule }
enum ProposalStatus { passed, failed, inProgress, removed }

@freezed
class Proposal with _$Proposal {
  const factory Proposal(
      int id, ProposalType type, int end, ProposalStatus status,
      {@JsonKey(name: 'data') String? cid,
      @JsonKey(name: 'data1') int? settingData}) = _Proposal;
}

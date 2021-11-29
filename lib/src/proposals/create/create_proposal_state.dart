part of 'create_proposal_bloc.dart';

@freezed
class CreateProposalState with _$CreateProposalState {
  const factory CreateProposalState.unloaded() = _Unloaded;
  const factory CreateProposalState.loading() = _Loading;
  const factory CreateProposalState.success() = _Success;
  const factory CreateProposalState.error(dynamic e) = _Error;
}

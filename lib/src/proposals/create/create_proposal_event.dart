part of 'create_proposal_bloc.dart';

@freezed
class CreateProposalEvent with _$CreateProposalEvent {
  const factory CreateProposalEvent.createAddComb(
      String title, String summary, String content) = AddComb;
  const factory CreateProposalEvent.createSwitchBackground(
      String title, String summary, String link) = SwitchBackground;
}

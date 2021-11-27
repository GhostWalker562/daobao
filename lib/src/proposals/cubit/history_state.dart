part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.data(List<Proposal> live, List<Proposal> history) = _Data;
  const factory HistoryState.loading(List<Proposal> live, List<Proposal> history) = _Loading;
  const factory HistoryState.error(List<Proposal> live, List<Proposal> history) = _Error;
}

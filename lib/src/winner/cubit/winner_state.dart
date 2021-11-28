part of 'winner_cubit.dart';

@freezed
class WinnerState with _$WinnerState {
  const factory WinnerState.initial() = _Initial;
  const factory WinnerState.loading() = _Loading;
  const factory WinnerState.decided(String prop, String winner) = _Decided;
  const factory WinnerState.undecided(String prop) = _Undecided;
  const factory WinnerState.noProposal() = _NoProposal;
  const factory WinnerState.error() = _Error;
}

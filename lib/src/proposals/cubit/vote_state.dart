part of 'vote_cubit.dart';

@freezed
class VoteState with _$VoteState {
  const factory VoteState.blacklisted() = _Blacklisted;
  const factory VoteState.success() = _Success;
  const factory VoteState.voted() = _Voted;
  const factory VoteState.novote() = _NoVote;
  const factory VoteState.loading() = _Loading;
  const factory VoteState.error() = _Error;
}

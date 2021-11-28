part of 'send_nft_cubit.dart';

@freezed
class SendNftState with _$SendNftState {
  const factory SendNftState.idle() = _Idle;
  const factory SendNftState.loading() = _Loading;
  const factory SendNftState.success(String hash) = _Success;
  const factory SendNftState.error() = _Error;
}

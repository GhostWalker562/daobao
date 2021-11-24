part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.connected(String address, int chainId) = Connected;
  const factory AuthState.unconnected() = _Unconnected;
  const factory AuthState.unsupported() = Unsupported;
}

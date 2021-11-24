part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkSupported() = CheckSupported;
  const factory AuthEvent.disconnect() = Disconnect;
  const factory AuthEvent.connect() = Connect;
  const factory AuthEvent.clear() = Clear;
}

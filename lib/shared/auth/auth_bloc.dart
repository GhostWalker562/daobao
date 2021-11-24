import 'package:bloc/bloc.dart';
import 'package:daobao/services/moralis/moralis.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:daobao/src/injectable.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@LazySingleton()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Web3Service web3Service = getIt<Web3Service>();
  final Moralis moralis = getIt<Moralis>();

  AuthBloc() : super(const Unsupported()) {
    on<CheckSupported>(checkSupported);
    on<Disconnect>(disconnect);
    on<Connect>(connect);
    on<Clear>(clear);
  }

  Future<void> connect(Connect event, Emitter<AuthState> emit) async {
    if (!web3Service.isSupported) return emit(const AuthState.unsupported());
    try {
      final account = await web3Service.requestAccount();
      await moralis.login();
      if (account == null) return;
      final chainId = await ethereum!.getChainId();
      emit(AuthState.connected(account, chainId));
    } catch (e) {
      print(e);
      //TODO: Catch error
    }
  }

  Future<void> disconnect(Disconnect event, Emitter<AuthState> emit) async {
    if (!web3Service.isSupported) return emit(const AuthState.unsupported());
    _clear();
    await moralis.logout();
  }

  void clear(Clear event, Emitter<AuthState> emit) {
    emit(const AuthState.unconnected());
    print('clearing');
  }

  void checkSupported(CheckSupported event, Emitter<AuthState> emit) {
    if (web3Service.isSupported) {
      // Subscribe to `chainChanged` event
      ethereum!.onChainChanged((chainId) => _clear());
      // Subscribe to `accountsChanged` event.
      ethereum!.onAccountsChanged((accounts) => _clear());
      emit(const AuthState.unconnected());
      add(const AuthEvent.connect());
    }
  }

  void _clear() => add(const Clear());
}

import 'package:bloc/bloc.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../injectable.dart';

part 'winner_state.dart';
part 'winner_cubit.freezed.dart';

class WinnerCubit extends Cubit<WinnerState> {
  WinnerCubit() : super(const WinnerState.initial());

  final web3 = getIt<Web3Service>();

  Future<void> checkProp() async {
    emit(const WinnerState.loading());
    try {
      final String prop = await web3.viewDao('mediateRandomness');
      if (prop.isEmpty) {
        emit(const WinnerState.noProposal());
      } else {
        checkWinner(prop);
      }
    } catch (e) {
      emit(const WinnerState.error());
    }
  }

  Future<void> checkWinner(String prop) async {
    emit(const WinnerState.loading());
    try {
      final String addy = await web3.viewDao('currentWinner');
      if (addy == '0x0000000000000000000000000000000000000000') {
        emit(WinnerState.undecided(prop));
      } else {
        emit(WinnerState.decided(prop, addy));
      }
    } catch (e) {
      print(e);
      emit(const WinnerState.error());
    }
  }

  Future<void> mintWinner() async {}
}

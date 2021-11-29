import 'package:bloc/bloc.dart';
import 'package:daobao/services/constants.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:daobao/shared/auth/auth_bloc.dart';
import 'package:daobao/src/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'balances_state.dart';
part 'balances_cubit.freezed.dart';

class BalancesCubit extends Cubit<BalancesState> {
  BalancesCubit() : super(const BalancesState.balances(0, 0));

  final Web3Service web3 = getIt<Web3Service>();
  final AuthBloc auth = getIt<AuthBloc>();

  Future<void> getBalances() async {
    if (!auth.isConnected) return;
    if (auth.wrongChain) return;
    try {
      emit(const BalancesState.loading(0, 0));
      final Connected state = auth.state as Connected;
      final daob = await web3.balance(kDaobao, state.address, state.chainId);
      final wmatic = await web3.balance(kWMATIC, state.address, state.chainId);
      print(wmatic.toInt());
      print(daob.toInt());
      print(daob.toInt() / (10e17));
      print(wmatic.toInt() / (10e17));
      emit(BalancesState.balances(
          daob.toInt() / (10e17), wmatic.toInt() / (10e17)));
    } catch (e) {
      emit(const BalancesState.balances(0, 0));
    }
  }
}

part of 'balances_cubit.dart';

@freezed
class BalancesState with _$BalancesState {
  const factory BalancesState.loading(double daob, double wmatic) = _Loading;
  const factory BalancesState.balances(double daob, double wmatic) = _Balances;
}

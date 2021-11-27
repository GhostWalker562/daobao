import 'package:bloc/bloc.dart';
import 'package:daobao/services/proposals/proposals.dart';
import 'package:daobao/services/proposals/proposals_service.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../injectable.dart';

part 'history_state.dart';
part 'history_cubit.freezed.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(const HistoryState.data([], []));

  final service = getIt<ProposalsService>();

  Future<void> load() async {
    // retrieve all data
    emit(HistoryState.loading(state.live, state.history));
    try {
      emit(HistoryState.data(
          await service.getActiveProposals(), await service.getHistory()));
    } catch (e) {
      print(e);
      emit(HistoryState.error(state.live, state.history));
      emit(HistoryState.data(state.live, state.history));
    }
  }
}

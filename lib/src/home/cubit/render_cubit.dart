import 'package:bloc/bloc.dart';
import 'package:daobao/services/proposals/proposals_service.dart';
import 'package:daobao/src/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'render_state.dart';
part 'render_cubit.freezed.dart';

class RenderCubit extends Cubit<RenderState> {
  RenderCubit() : super(const RenderState.loading());

  Future<void> loadData() async {
    emit(const RenderState.loading());
    try {
      emit(RenderState.render(
          await getIt<ProposalsService>().getLiveProposalsModuleData()));
    } catch (e) {
      emit(const RenderState.error());
    }
  }
}

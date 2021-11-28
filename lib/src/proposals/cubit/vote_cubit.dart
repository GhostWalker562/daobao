import 'package:bloc/bloc.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:daobao/shared/auth/auth_bloc.dart';
import 'package:daobao/src/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote_state.dart';
part 'vote_cubit.freezed.dart';

class VoteCubit extends Cubit<VoteState> {
  VoteCubit(this.id) : super(const VoteState.blacklisted());

  final String id;

  final web3 = getIt<Web3Service>();

  Future<void> checkVoted() async {
    emit(const VoteState.loading());
    final state = getIt<AuthBloc>().state;
    if (state is! Connected) {
      return emit(const VoteState.blacklisted());
    }

    final bool isVoted = await web3.viewDao('getVoted', [(state).address, id]);
    emit(isVoted ? const VoteState.voted() : const VoteState.novote());
  }

  Future<void> vote(bool value) async {
    final previous = state;
    emit(const VoteState.loading());
    if (getIt<AuthBloc>().state is! Connected) return;
    try {
      final tx = await web3.sendDao('vote', [id, value]);
      await tx.wait();
      emit(const VoteState.success());
      checkVoted();
    } catch (e) {
      print(e);
      emit(previous);
    }
  }
}

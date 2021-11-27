import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:daobao/services/moralis/moralis.dart';
import 'package:daobao/services/proposals/proposals_service.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../injectable.dart';

part 'create_proposal_event.dart';
part 'create_proposal_state.dart';
part 'create_proposal_bloc.freezed.dart';

class CreateProposalBloc
    extends Bloc<CreateProposalEvent, CreateProposalState> {
  CreateProposalBloc() : super(_Unloaded()) {
    on<CreateProposalEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<AddComb>(addComb);
    on<SwitchBackground>(switchBackground);
  }

  final moralis = getIt<Moralis>();
  final web3 = getIt<Web3Service>();

  Future<void> addComb(AddComb event, Emitter emit) async {
    emit(const _Loading());
    try {
      print('uploading');
      print(Module.comb(event.title, event.summary, event.content).toJson());
      // print(jsonEncode(
      //     Module.comb(event.title, event.summary, event.content).toJson()));
      // print(base64Decode(
      //   jsonEncode(
      //       Module.comb(event.title, event.summary, event.content).toJson()),
      // ));
      final cid = await moralis.upload(
          const Uuid().v1(),
          base64.encode(utf8.encode(
              Module.comb(event.title, event.summary, event.content)
                  .toRawJson())));
      print(cid);
      print(ProposalType.addModule.index);
      final tx = await web3.sendDao('submitModuleProposal', [
        Random().nextInt(10000).toString(),
        cid,
        ProposalType.addModule.index,
      ]);
      await tx.wait();
      emit(const _Success());
    } catch (e) {
      print(e);
      emit(const _Error());
      emit(const _Unloaded());
    }
  }

  Future<void> switchBackground(SwitchBackground event, Emitter emit) async {}
}

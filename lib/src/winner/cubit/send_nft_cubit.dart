import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:daobao/shared/auth/auth_bloc.dart';
import 'package:daobao/src/injectable.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

part 'send_nft_state.dart';
part 'send_nft_cubit.freezed.dart';

class SendNftCubit extends Cubit<SendNftState> {
  SendNftCubit() : super(const SendNftState.loading());

  Future<void> checkForSent(String addy) async {
    emit(const SendNftState.loading());
    try {
      final sp = await SharedPreferences.getInstance();
      final sent = sp.getString('sent-nft');
      final hash = sp.getString('sent-nft-hash');
      if (sent != null && sent == addy && hash != null) {
        emit(SendNftState.success(hash));
      } else {
        emit(const SendNftState.idle());
      }
    } catch (e) {
      emit(const SendNftState.idle());
    }
  }

  Future<void> sendNft(String addy) async {
    if (getIt<AuthBloc>().state is! Connected) {
      getIt<AuthBloc>().add(const Connect());
      return;
    }
    emit(const SendNftState.loading());
    try {
      print('sending nft');
      final res = await Dio().post(
        'https://api.nftport.xyz/v0/mints/easy/urls',
        options: Options(
          headers: {HttpHeaders.authorizationHeader: dotenv.get('NFTPORT')},
          contentType: Headers.jsonContentType,
        ),
        data: {
          "chain": "polygon",
          "name": "HomepageDAO Appreciation (${const Uuid().v1()})",
          "file_url": 'https://i.imgur.com/YP9h75H.png',
          "description":
              '${(getIt<AuthBloc>().state as Connected).address} appreciates you.',
          "mint_to_address": addy,
        },
      );
      final sp = await SharedPreferences.getInstance();
      await sp.setString('sent-nft', addy);
      await sp.setString('sent-nft-hash', res.data['transaction_hash'] as String);
      emit(SendNftState.success(res.data['transaction_hash'] as String));
    } catch (e) {
      emit(const SendNftState.idle());
    }
  }
}

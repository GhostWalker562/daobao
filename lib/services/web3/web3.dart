import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:flutter_web3/flutter_web3.dart';

import '../constants.dart';

@singleton
class Web3Service {
  // `Ethereum.isSupported` is the same as `ethereum != null`
  bool get isSupported => Ethereum.isSupported;

  Future<String?> requestAccount() async {
    if (isSupported) {
      try {
        // Prompt user to connect to the provider, i.e. confirm the connection modal
        final accs = await ethereum!.requestAccount();
        if (accs.isNotEmpty) return accs.first;
      } on EthereumUserRejected {
        log('User rejected the modal');
        rethrow;
      }
    }
  }

  /// This method should only be called when an account is connected.
  Future<int?> requestChainId() async {
    if (isSupported) {
      try {
        // Prompt user to connect to the provider, i.e. confirm the connection modal
        return await ethereum!.getChainId();
      } on Exception {
        log('No chain id found');
        rethrow;
      }
    }
  }

  Future<BigInt> allowance(
    String tokenAddress,
    String owner,
    String spender,
    int chainId,
  ) async =>
      await ContractERC20(
              tokenAddress, JsonRpcProvider(getAlchemyLink(chainId)))
          .allowance(owner, spender);

  Future<TransactionResponse> approve(
    String tokenAddress,
    String spender, [
    double amount = 1000000,
  ]) async =>
      await ContractERC20(tokenAddress, provider!.getSigner())
          .approve(spender, BigInt.from(amount * (1e18)));

  Future<BigInt> balance(
    String tokenAddress,
    String owner,
    int chain,
  ) async =>
      await ContractERC20(tokenAddress, JsonRpcProvider(getAlchemyLink(chain)))
          .balanceOf(owner);

  Future<T> viewDao<T>(String method, [List<String> args = const []]) async =>
      await Contract(
              kDao, Interface(daoAbi), JsonRpcProvider(getAlchemyLink(8001)))
          .call<T>(method, args);

  Future<TransactionResponse> sendDao<T>(
    String method, [
    List<String> args = const [],
    TransactionOverride? override,
  ]) async =>
      await Contract(kDao, Interface(daoAbi), provider!.getSigner())
          .send(method, args);
}

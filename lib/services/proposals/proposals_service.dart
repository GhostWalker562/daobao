import 'dart:convert';

import 'package:daobao/services/proposals/proposals.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:daobao/src/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:injectable/injectable.dart';

export 'package:daobao/services/proposals/proposals.dart';

@lazySingleton
class ProposalsService {
  final Web3Service web3 = getIt<Web3Service>();

  Future<List<Proposal>> getHistory() async {
    List<Proposal> proposals = [];

    // get the
    // web3.viewDao(method)
    final List<dynamic> proposalIds =
        await getIt<Web3Service>().viewDao('getProposalInfo', ['0']);

    return proposals;
  }

  Future<List<Proposal>> getActiveProposals() async {
    List<Proposal> proposals = [];

    // get the
    // web3.viewDao(method)
    final List<dynamic> proposalIds =
        await getIt<Web3Service>().viewDao('getActiveProposals');

    for (dynamic id in proposalIds) {
      if (id is! String) continue;

      final List<dynamic> data =
          await getIt<Web3Service>().viewDao('getProposalInfo', [id]);

      // print(data[0]);
      // print(convertBigInt(data[1]));
      // print(ProposalType.values[(int.parse(data[2].toString()))]);
      // print(convertBigInt(data[3]));

      proposals.add(
        Proposal(
          id,
          data[0],
          convertBigInt(data[1]),
          ProposalType.values[(int.parse(data[2].toString()))],
          convertBigInt(data[3]),
          data[4],
          ProposalStatus.values[(int.parse(data[5].toString()))],
          convertBigInt(data[6]),
          convertBigInt(data[7]),
          convertBigInt(data[8]),
        ),
      );
    }

    print('Active Proposals: ' + proposals.toString());

    return proposals;
  }

  int convertBigInt(dynamic str) => BigInt.from(
        num.parse(jsonDecode(stringify(str))['hex']),
      ).toInt();
}

import 'dart:convert';

import 'package:daobao/components/components.dart';
import 'package:daobao/helpers/extensions.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:daobao/services/proposals/proposals.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:daobao/src/proposals/cubit/history_cubit.dart';
import 'package:daobao/src/router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web3/flutter_web3.dart';

import '../injectable.dart';

class ProposalHistoryPage extends StatelessWidget {
  const ProposalHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  print(Proposal.create('QmNSKewexhgY4rYwPoxPgNFN7BSjeiLXJif9q5FjeCrsmg', ProposalType.addModule).toJson());
    // print(Module.comb('First Proposal', 'I like this picture',
    //         'https://bafybeiabxivldsptba4yn7uj5pmdgewgp5tvzunqojzux65eylyliu4faq.ipfs.dweb.link/logo.png')
    //     .toJson());
    return Container(
      color: context.colorScheme.background,
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 650),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: Radii.mr,
                  border:
                      Border.all(color: context.colorScheme.primary, width: 1),
                  color: context.colorScheme.primaryVariant,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'HomepageDAO Governance',
                      style: context.textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const SelectableText(
                      'daobao tokens represent voting shares in the HomepageDAO governance. You can vote on each proposal yourself or create proposals yourself.',
                    ),
                    const SizedBox(height: 8),
                    const TransparentButton(
                      child: Text(
                        'Get some tokens yourself',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: TransparentButton(
                  onPressed: () =>
                      context.router.push(const ProposalCreateRoute()),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: Radii.mr,
                      color: context.colorScheme.primary,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Hero(
                      tag: 'create-proposal',
                      child: Text(
                        'Create Proposal',
                        style: context.textTheme.subtitle1!
                            .copyWith(color: context.colorScheme.onPrimary),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // TextButton(
              //   child: Text('Tuple'),
              //   onPressed: () async {
              //     print(await getIt<Web3Service>()
              //         .viewDao('getProposalInfo', ['0']));
              //   },
              // ),
              Expanded(
                child: BlocProvider(
                  create: (context) => HistoryCubit()..load(),
                  child: BlocBuilder<HistoryCubit, HistoryState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        data: (live, history) => Column(
                          children: [
                            if (live.isEmpty && history.isEmpty)
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: context.colorScheme.secondary,
                                  ),
                                  borderRadius: Radii.lr,
                                ),
                                margin: const EdgeInsets.all(64.0),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 64, vertical: 32.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset('assets/images/empty_state.png',
                                        height: 200),
                                    const SizedBox(height: 24),
                                    const Text('No proposals yet.'),
                                  ],
                                ),
                              ),
                            ...live.map((e) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: ProposalButton(proposal: e),
                                )),
                            Expanded(
                              child: ListView.builder(
                                itemCount: history.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: ProposalButton(
                                      proposal: history[index],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        orElse: () => Center(
                          child: Container(
                            margin: const EdgeInsets.all(64),
                            height: 64,
                            width: 64,
                            child: const CircularProgressIndicator(),
                          ),
                        ),
                      );

                      return ListView(
                        children: [
                          // Center(
                          //   child: Container(
                          //     padding: const EdgeInsets.all(12),
                          //     decoration: BoxDecoration(
                          //       color: context.colorScheme.secondaryVariant
                          //           .withOpacity(0.25),
                          //       borderRadius: Radii.lr,
                          //     ),
                          //     child: Row(
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: [
                          //         const SelectableText('#54'),
                          //         const SizedBox(width: 8),
                          //         SelectableText(
                          //           '+COMB54',
                          //           style: context.textTheme.headline6!.copyWith(
                          //             fontWeight: FontWeight.w600,
                          //             color: context.colorScheme.primary,
                          //           ),
                          //         ),
                          //         const SizedBox(width: 8),
                          //         SelectableText(
                          //           'First DAOBAO Title',
                          //           style: context.textTheme.headline6!.copyWith(
                          //             fontWeight: FontWeight.w600,
                          //           ),
                          //         ),
                          //         Expanded(child: Container()),
                          //         Container(
                          //           padding: const EdgeInsets.all(6),
                          //           decoration: BoxDecoration(
                          //             // color: context.colorScheme.primary,
                          //             borderRadius: Radii.mr,
                          //             border: Border.all(
                          //               color: context.colorScheme.primary,
                          //               width: 1,
                          //             ),
                          //           ),
                          //           child: SelectableText(
                          //             'EXECUTED',
                          //             style: context.textTheme.button!.copyWith(
                          //               color: context.colorScheme.primary,
                          //             ),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          // const SizedBox(height: 8),
                          // const ProposalButton(
                          //   proposal: Proposal(
                          //     0,
                          //     ProposalType.removeModule,
                          //     3,
                          //     ProposalStatus.failed,
                          //     1,
                          //     1,
                          //   ),
                          // ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProposalButton extends StatefulWidget {
  const ProposalButton({
    Key? key,
    required this.proposal,
  }) : super(key: key);

  final Proposal proposal;

  @override
  State<ProposalButton> createState() => _ProposalButtonState();
}

class _ProposalButtonState extends State<ProposalButton> {
  bool isHovered = false;

  Widget _buildType() {
    if (widget.proposal is! ProposalData) return const SizedBox.shrink();

    late final String text;
    late final Color color;

    switch ((widget.proposal as ProposalData).type) {
      case ProposalType.threshold:
        text = 'THRESHOLD';
        color = context.colorScheme.primary;
        break;
      case ProposalType.quorum:
        text = 'QUORUM';
        color = context.colorScheme.primary;
        break;
      case ProposalType.locktime:
        text = 'LOCKTIME';
        color = context.colorScheme.primary;
        break;
      case ProposalType.addModule:
        text = '+COMB';
        color = context.colorScheme.primary;
        break;
      case ProposalType.removeModule:
        text = '-COMB';
        color = context.colorScheme.error;
        break;
    }

    return Text(
      text,
      style: context.textTheme.headline6!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }

  Widget _buildStatus() {
    if (widget.proposal is! ProposalData) return const SizedBox.shrink();

    late final String text;
    late final Color borderColor;

    switch ((widget.proposal as ProposalData).status) {
      case ProposalStatus.passed:
        text = 'PASSED';
        borderColor = context.colorScheme.primary;
        break;
      case ProposalStatus.failed:
        text = 'DEFEATED';
        borderColor = context.colorScheme.error;
        break;
      case ProposalStatus.inProgress:
        text = 'LIVE';
        borderColor = context.colorScheme.secondary;
        break;
      case ProposalStatus.removed:
        text = 'REMOVED';
        borderColor = context.colorScheme.error;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: Radii.mr,
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Text(
        text,
        style: context.textTheme.button!.copyWith(
          color: borderColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => context.router
            .push(ProposalsDetailsRoute(id: int.parse(widget.proposal.id))),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(() => isHovered = false),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: context.colorScheme.secondaryVariant
                  .withOpacity(isHovered ? 0.8 : 0.25),
              borderRadius: Radii.lr,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: 30),
                  child: Text(
                      '#${(widget.proposal as ProposalData).id.toString()}'),
                ),
                const SizedBox(width: 8),
                _buildType(),
                const SizedBox(width: 8),
                FutureBuilder<Response<Map<String, dynamic>>>(
                    future: Dio().get<Map<String, dynamic>>(
                        'https://ipfs.moralis.io:2053/ipfs/${widget.proposal.cid}'),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text(
                          'Error',
                          style: context.textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      }
                      if (!snapshot.hasData) {
                        return const CircularProgressIndicator();
                      }

                      final data = ModuleData.fromJson(snapshot.data!.data!);

                      return Text(
                        data.title,
                        style: context.textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    }),
                Expanded(child: Container()),
                _buildStatus(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

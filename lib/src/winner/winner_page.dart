import 'package:daobao/components/empty.dart';
import 'package:daobao/components/transparent_button.dart';
import 'package:daobao/helpers/extensions.dart';
import 'package:daobao/helpers/radii.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:daobao/src/proposals/proposal_components.dart';
import 'package:daobao/src/winner/cubit/send_nft_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../injectable.dart';
import 'cubit/winner_cubit.dart';

class WinnerPage extends StatelessWidget {
  const WinnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WinnerCubit()..checkProp(),
      child: Container(
        color: context.colorScheme.background,
        child: SingleChildScrollView(
          child: ProposalsContainerWrapper(
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: context.colorScheme.secondaryVariant.withOpacity(0.25),
                  borderRadius: Radii.lr,
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(),
                    // Text('Winner', style: context.textTheme.headline4),
                    // const SizedBox(height: 12),
                    BlocBuilder<WinnerCubit, WinnerState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => const CircularProgressIndicator(),
                          loading: () => const CircularProgressIndicator(),
                          decided: (prop, addy) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Most Recent Proposal Passed: ',
                                  style: context.textTheme.headline4,
                                ),
                                Text(
                                  prop,
                                  style: context.textTheme.headline4!.copyWith(
                                      color: context.colorScheme.primary),
                                ),
                                const SizedBox(height: 24),
                                const CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                      'https://lh3.googleusercontent.com/x-8cxWfSABaoHdqyUvosBDeLr4c_6GO4YU17eHAKcF9-SwOj3FEMqQA_7mOwtg9glv7e6P8WnZuDR2_bPTiUvrai=w600'),
                                ),
                                Text(
                                  'Winner of Proposal: ',
                                  style: context.textTheme.headline4,
                                ),
                                Text(
                                  '${addy.substring(0, 5)}...${addy.substring(addy.length - 5)}',
                                  style: context.textTheme.headline4!.copyWith(
                                      color: context.colorScheme.primary),
                                ),
                                const SizedBox(height: 24),
                                BlocProvider(
                                  create: (context) =>
                                      SendNftCubit()..checkForSent(addy),
                                  child:
                                      BlocBuilder<SendNftCubit, SendNftState>(
                                    builder: (context, state) {
                                      return state.maybeWhen(
                                          success: (hash) {
                                            return TransparentButton(
                                              onPressed: () => launch(
                                                  'https://polygonscan.com/tx/$hash'),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: context
                                                      .colorScheme.primary,
                                                  borderRadius: Radii.mr,
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 24,
                                                        vertical: 8),
                                                margin: const EdgeInsets.only(
                                                    right: 12),
                                                child: Text(
                                                  'APPRECIATED ${addy.substring(0, 10)}',
                                                  style: TextStyle(
                                                    color: context
                                                        .colorScheme.onPrimary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          idle: () {
                                            return TransparentButton(
                                              onPressed: () async {
                                                context
                                                    .read<SendNftCubit>()
                                                    .sendNft(addy);
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: context
                                                      .colorScheme.primary,
                                                  borderRadius: Radii.mr,
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 24,
                                                        vertical: 8),
                                                margin: const EdgeInsets.only(
                                                    right: 12),
                                                child: Text(
                                                  'APPRECIATE WINNER WITH NFT',
                                                  style: TextStyle(
                                                    color: context
                                                        .colorScheme.onPrimary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          orElse: () =>
                                              const CircularProgressIndicator());
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                          undecided: (prop) => Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Most Recent Proposal Passed: ',
                                style: context.textTheme.headline4,
                              ),
                              Text(
                                prop,
                                style: context.textTheme.headline4!.copyWith(
                                    color: context.colorScheme.primary),
                              ),
                              const SizedBox(height: 24),
                              TransparentButton(
                                onPressed: () async {
                                  final tx = await getIt<Web3Service>()
                                      .sendDao('decideWinner');
                                  await tx.wait();
                                  context.read<WinnerCubit>().checkProp();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.primary,
                                    borderRadius: Radii.mr,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 8),
                                  margin: const EdgeInsets.only(right: 12),
                                  child: Text(
                                    'DECIDE WINNER',
                                    style: TextStyle(
                                        color: context.colorScheme.onPrimary),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          noProposal: () =>
                              const EmptyState(text: 'No passed proposal.'),
                          error: () =>
                              const EmptyState(text: 'Error loading winner.'),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

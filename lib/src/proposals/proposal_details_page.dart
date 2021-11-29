import 'package:auto_route/auto_route.dart';
import 'package:daobao/components/components.dart';
import 'package:daobao/services/proposals/proposals.dart';
import 'package:daobao/services/proposals/proposals_service.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:daobao/src/proposals/cubit/vote_cubit.dart';
import 'package:daobao/src/proposals/proposal_components.dart';
import 'package:daobao/src/proposals/proposal_create_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:markdown_widget/markdown_widget.dart';

import '../injectable.dart';
import '../router.dart';

class ProposalsDetailsPage extends StatefulWidget {
  const ProposalsDetailsPage({
    Key? key,
    @PathParam('id') required this.id,
  }) : super(key: key);

  final String id;

  @override
  State<ProposalsDetailsPage> createState() => _ProposalsDetailsPageState();
}

class _ProposalsDetailsPageState extends State<ProposalsDetailsPage> {
  final Widget defaultEmpty = Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/empty_state.png', height: 200),
        const SizedBox(height: 24),
        const Text('No Content')
      ],
    ),
  );

  Widget buildMarkdown(Module content) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: content.maybeWhen(
        (title, summary) => defaultEmpty,
        comb: (title, summary, content) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: MarkdownGenerator(
              data: content,
              childMargin: EdgeInsets.zero,
            ).widgets!,
          ),
        ),
        background: (title, summary, content) => Image.network(
          content,
          errorBuilder: (context, url, error) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/empty_state.png', height: 200),
                  const SizedBox(height: 24),
                  const Text('Error loading your image'),
                ],
              ),
            );
          },
        ),
        orElse: () => defaultEmpty,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VoteCubit(widget.id.toString())..checkVoted(),
      child: Container(
        color: context.colorScheme.background,
        child: SingleChildScrollView(
          child: ProposalsContainerWrapper(
            width: 800,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: context.colorScheme.secondaryVariant.withOpacity(0.25),
                borderRadius: Radii.lr,
              ),
              child: FutureBuilder<List<dynamic>>(
                  future: getIt<Web3Service>()
                      .viewDao('getProposalInfo', ['${widget.id}']),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      print(snapshot.error);
                      return const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 48.0, vertical: 24),
                        child: EmptyState(text: 'Error loading proposal.'),
                      );
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const CircularProgressIndicator();
                    }

                    final proposal = Proposal(
                      '0',
                      snapshot.data![0],
                      ProposalsService.convertBigInt(snapshot.data![1]),
                      ProposalType
                          .values[(int.parse(snapshot.data![2].toString()))],
                      ProposalsService.convertBigInt(snapshot.data![3]),
                      snapshot.data![4],
                      ProposalStatus
                          .values[(int.parse(snapshot.data![5].toString()))],
                      ProposalsService.convertBigInt(snapshot.data![6]),
                      ProposalsService.convertBigInt(snapshot.data![7]),
                      ProposalsService.convertBigInt(snapshot.data![8]),
                    );

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                children: [
                                  const SizedBox(width: 12),
                                  TransparentButton(
                                    onPressed: () => context.router
                                        .push(const ProposalHistoryRoute()),
                                    child: const Icon(IconlyLight.arrow_left),
                                  ),
                                  const Expanded(child: SizedBox()),
                                  SelectableText(
                                    'Proposal Details',
                                    style: context.textTheme.headline6,
                                  ),
                                  const Expanded(child: SizedBox()),
                                  const InvisibleSized(
                                      child: Icon(IconlyLight.arrow_left)),
                                  const SizedBox(width: 12),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                            FutureBuilder<Response<Map<String, dynamic>>>(
                              future: Dio().get<Map<String, dynamic>>(
                                  'https://ipfs.moralis.io:2053/ipfs/${proposal.cid}'),
                              builder: (context, snapshot) {
                                if (snapshot.hasError) {
                                  return const EmptyState(
                                      text: 'Error loading proposal.');
                                } else if (!snapshot.hasData) {
                                  return const CircularProgressIndicator();
                                }

                                final Module data =
                                    Module.fromJson(snapshot.data!.data!);

                                return Container(
                                  constraints: const BoxConstraints(
                                      minHeight: 650, maxWidth: 700),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 650,
                                        height: 325,
                                        decoration: BoxDecoration(
                                          color: context.colorScheme.background,
                                          borderRadius: Radii.lr,
                                          border: Border.all(
                                            color: context.colorScheme.primary,
                                            width: 1,
                                          ),
                                        ),
                                        child: buildMarkdown(data),
                                      ),
                                      const SizedBox(height: 24),
                                      const SizedBox(height: 12),
                                      const Divider(),
                                      const SizedBox(height: 12),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Proposal',
                                          style: context.textTheme.headline6!
                                              .copyWith(
                                            color: context.colorScheme.primary,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                            color: context.colorScheme.surface
                                                .withOpacity(0.5)),
                                        child: SelectableText(
                                          data.title,
                                          style: context.textTheme.headline6,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                            color: context.colorScheme.surface
                                                .withOpacity(0.5)),
                                        child: SelectableText(
                                            'Summary\n\n${data.summary}'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Divider(),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 36),
                            SizedBox(
                              width: 200,
                              child: LinearProgressIndicator(
                                minHeight: 16,
                                value: proposal.totalVotes == 0
                                    ? 0
                                    : proposal.forVotes / proposal.totalVotes,
                              ),
                            ),
                            const SizedBox(width: 24),
                            Text('Total Votes: ${proposal.totalVotes}'),
                            const SizedBox(width: 24),
                            Text('For Votes: ${proposal.forVotes}'),
                            const Spacer(),
                            if (proposal.status == ProposalStatus.inProgress)
                              BlocConsumer<VoteCubit, VoteState>(
                                listener: (context, state) => state.whenOrNull(
                                    success: () => context.router.push(
                                        ProposalsDetailsRoute(id: widget.id))),
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    loading: () =>
                                        const CircularProgressIndicator(),
                                    voted: () => Text(
                                      'Voted!',
                                      style:
                                          context.textTheme.headline6!.copyWith(
                                        color: context.colorScheme.primary,
                                      ),
                                    ),
                                    novote: () => Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TransparentButton(
                                          onPressed: () => context
                                              .read<VoteCubit>()
                                              .vote(false),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: Radii.mr,
                                              color:
                                                  context.colorScheme.secondary,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 8),
                                            child: Text(
                                              'Against',
                                              style: context
                                                  .textTheme.subtitle1!
                                                  .copyWith(
                                                color: context
                                                    .colorScheme.onPrimary,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        TransparentButton(
                                          onPressed: () => context
                                              .read<VoteCubit>()
                                              .vote(true),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: Radii.mr,
                                              color:
                                                  context.colorScheme.secondary,
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 8),
                                            child: Text(
                                              'For',
                                              style: context
                                                  .textTheme.subtitle1!
                                                  .copyWith(
                                                color: context
                                                    .colorScheme.onPrimary,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    orElse: () => const SizedBox.shrink(),
                                  );
                                },
                              ),
                            const SizedBox(width: 36),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}

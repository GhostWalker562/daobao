import 'package:daobao/components/components.dart';
import 'package:daobao/helpers/extensions.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:daobao/services/proposals/proposals_service.dart';
import 'package:daobao/src/home/cubit/render_cubit.dart';
import 'package:daobao/src/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markdown_widget/markdown_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.background,
      child: Stack(
        children: [
          BlocProvider(
            create: (context) => RenderCubit()..loadData(),
            child: BlocBuilder<RenderCubit, RenderState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: context.colorScheme.secondaryVariant
                              .withOpacity(0.25),
                          borderRadius: Radii.lr,
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const CircularProgressIndicator(),
                      ),
                    );
                  },
                  error: () {
                    return const Center(
                        child:
                            Text('There was an issue rendering the homepage.'));
                  },
                  render: (data) {
                    return Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.symmetric(
                              vertical:
                                  context.media.size.width > 650 ? 64 : 12,
                              horizontal: 8,
                            ),
                            itemCount: data.length + 1,
                            itemBuilder: (context, index) {
                              if (index == data.length) {
                                return const SizedBox(height: 300);
                              }

                              return Center(
                                child: Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 850),
                                  child: MarkdownRender(link: data[index]),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
          if (context.media.size.width > 650)
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  borderRadius: Radii.mr,
                  border:
                      Border.all(color: context.colorScheme.primary, width: 1),
                  color: context.colorScheme.primaryVariant,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      'The Homepage 🔥',
                      style: context.textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const SelectableText(
                      'All content shown on this page is generated from the DAO. HomepageDAO fosters the new generation of DAOs, expanding away from protocol and into user generated content.',
                    ),
                  ],
                ),
              ),
            )
          else
            const SizedBox.shrink()
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     padding: const EdgeInsets.all(12),
          //     margin: const EdgeInsets.all(32),
          //     decoration: BoxDecoration(
          //       borderRadius: Radii.mr,
          //       border:
          //           Border.all(color: context.colorScheme.primary, width: 1),
          //       color: context.colorScheme.primaryVariant,
          //     ),
          //     child: Column(
          //       mainAxisSize: MainAxisSize.min,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         SelectableText(
          //           'The Homepage 🔥',
          //           style: context.textTheme.headline6!.copyWith(
          //             fontWeight: FontWeight.bold,
          //             color: context.colorScheme.primary,
          //           ),
          //         ),
          //         const SizedBox(height: 8),
          //         const SelectableText(
          //           'All content shown on this page is generated from the DAO. HomepageDAO fosters the new generation of DAOs, expanding away from protocol and into user generated content.',
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class MarkdownRender extends StatelessWidget {
  const MarkdownRender({Key? key, required this.link}) : super(key: key);

  final ModuleProposalLink link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topRight,
              child: TransparentButton(
                onPressed: () => context.router
                    .push(ProposalsDetailsRoute(id: link.proposal.id)),
                child: Text('Proposal: ${link.proposal.id}',
                    style: context.textTheme.overline),
              )),
          link.module.maybeWhen(
            (title, summary) => const SizedBox.shrink(),
            comb: (title, summary, cid) => MarkdownWidget(
              data: cid,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

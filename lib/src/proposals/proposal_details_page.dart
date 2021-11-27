import 'package:auto_route/auto_route.dart';
import 'package:daobao/components/components.dart';
import 'package:daobao/src/proposals/proposal_components.dart';
import 'package:daobao/src/proposals/proposal_create_page.dart';
import 'package:flutter/material.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '../router.dart';

class ProposalsDetailsPage extends StatefulWidget {
  const ProposalsDetailsPage({
    Key? key,
    @PathParam('id') required this.id,
  }) : super(key: key);

  final int id;

  @override
  State<ProposalsDetailsPage> createState() => _ProposalsDetailsPageState();
}

class _ProposalsDetailsPageState extends State<ProposalsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Column(
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
                    // type != ProposalType.addModule
                    //     ? Column(
                    //         mainAxisSize: MainAxisSize.min,
                    //         children: [
                    //           Image.asset(
                    //             'assets/images/empty_state.png',
                    //             height: 250,
                    //           ),
                    //           const SizedBox(height: 24),
                    //           const Text(
                    //               'This proposal type is not supported.'),
                    //         ],
                    //       )
                    //     : ContentCombEditor(
                    //         contentController: contentController,
                    //         titleController: titleController,
                    //         summaryController: summaryController,
                    //         backgroundController: backgroundController,
                    //         isBackgroundImage: (e) =>
                    //             setState(() => isBackgroundImage = e),
                    //       ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TransparentButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: Radii.mr,
                          color: context.colorScheme.secondary,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(
                          'No',
                          style: context.textTheme.subtitle1!.copyWith(
                            color: context.colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    TransparentButton(
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: Radii.mr,
                          color: context.colorScheme.secondary,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(
                          'Yes',
                          style: context.textTheme.subtitle1!.copyWith(
                            color: context.colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

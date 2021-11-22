import 'package:daobao/components/components.dart';
import 'package:daobao/helpers/extensions.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:daobao/services/proposals/proposals.dart';
import 'package:daobao/src/router.dart';
import 'package:flutter/material.dart';

class ProposalHistoryPage extends StatelessWidget {
  const ProposalHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Expanded(
                child: ListView(
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: context.colorScheme.secondaryVariant
                              .withOpacity(0.25),
                          borderRadius: Radii.lr,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SelectableText('#54'),
                            const SizedBox(width: 8),
                            SelectableText(
                              '+COMB54',
                              style: context.textTheme.headline6!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: context.colorScheme.primary,
                              ),
                            ),
                            const SizedBox(width: 8),
                            SelectableText(
                              'First DAOBAO Title',
                              style: context.textTheme.headline6!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                // color: context.colorScheme.primary,
                                borderRadius: Radii.mr,
                                border: Border.all(
                                  color: context.colorScheme.primary,
                                  width: 1,
                                ),
                              ),
                              child: SelectableText(
                                'EXECUTED',
                                style: context.textTheme.button!.copyWith(
                                  color: context.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const ProposalButton(
                      proposal: Proposal(
                        0,
                        ProposalType.removeModule,
                        3,
                        ProposalStatus.failed,
                      ),
                    ),
                  ],
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
    return Container();
  }

  Widget _buildStatus() {
    late final String text;
    late final Color borderColor;

    switch (widget.proposal.status) {
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
                child: Text('#${widget.proposal.id.toString()}'),
              ),
              const SizedBox(width: 8),
              Text(
                '-COMB54',
                style: context.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.error,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'Mispelled Title',
                style: context.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(child: Container()),
              _buildStatus(),
            ],
          ),
        ),
      ),
    );
  }
}

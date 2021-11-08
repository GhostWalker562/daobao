import 'package:flutter/material.dart';
import 'package:daobao/helpers/helpers.dart';

class ProposalsPage extends StatelessWidget {
  const ProposalsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.background,
      child: ListView(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: context.colorScheme.secondaryVariant.withOpacity(0.25),
                borderRadius: Radii.lr,
              ),
              width: 600,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SelectableText('#54'),
                  SizedBox(width: 8),
                  SelectableText(
                    '+COMB54',
                    style: context.textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: context.colorScheme.primary,
                    ),
                  ),
                  SizedBox(width: 8),
                  SelectableText(
                    'First DAOBAO Title',
                    style: context.textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      // color: context.colorScheme.primary,
                      borderRadius: Radii.mr,
                      border: Border.all(
                          color: context.colorScheme.primary, width: 1),
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
          SizedBox(height: 8),
          ProposalButton(),
        ],
      ),
    );
  }
}

class ProposalButton extends StatefulWidget {
  const ProposalButton({Key? key}) : super(key: key);

  @override
  State<ProposalButton> createState() => _ProposalButtonState();
}

class _ProposalButtonState extends State<ProposalButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: context.colorScheme.secondaryVariant
                .withOpacity(isHovered ? 0.8 : 0.25),
            borderRadius: Radii.lr,
          ),
          width: 600,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('#55'),
              SizedBox(width: 8),
              Text(
                '-COMB54',
                style: context.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: context.colorScheme.error,
                ),
              ),
              SizedBox(width: 8),
              Text(
                'Mispelled Title',
                style: context.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(child: Container()),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: Radii.mr,
                  border:
                      Border.all(color: context.colorScheme.error, width: 1),
                ),
                child: Text(
                  'DEFEATED',
                  style: context.textTheme.button!.copyWith(
                    color: context.colorScheme.error,
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

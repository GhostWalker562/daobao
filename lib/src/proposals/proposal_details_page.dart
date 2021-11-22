import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:daobao/helpers/helpers.dart';

class ProposalsDetailsPage extends StatelessWidget {
  const ProposalsDetailsPage({
    Key? key,
    @PathParam('id') required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.background,
      child: ListView(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: context.colorScheme.secondaryVariant.withOpacity(0.25),
                borderRadius: Radii.lr,
              ),
              width: 600,
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
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

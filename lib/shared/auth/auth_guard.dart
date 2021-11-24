import 'package:daobao/components/components.dart';
import 'package:daobao/helpers/extensions.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:daobao/src/proposals/proposal_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_bloc.dart';

class AuthGuard extends StatelessWidget {
  const AuthGuard({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is! Connected) {
          return ProposalsContainerWrapper(
            child: Container(
              color: context.colorScheme.background,
              child: Container(
                padding: const EdgeInsets.all(64),
                decoration: BoxDecoration(
                  color: context.colorScheme.secondaryVariant.withOpacity(0.25),
                  borderRadius: Radii.lr,
                ),
                child: TransparentButton(
                  onPressed: () =>
                      context.read<AuthBloc>().add(const Connect()),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: Radii.mr,
                      color: context.colorScheme.primary,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    child: Text(
                      'Connect to Wallet',
                      style: context.textTheme.subtitle1!
                          .copyWith(color: context.colorScheme.onPrimary),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        return child;
      },
    );
  }
}

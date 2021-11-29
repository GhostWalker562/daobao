import 'package:daobao/components/components.dart';
import 'package:daobao/helpers/extensions.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:daobao/services/constants.dart';
import 'package:daobao/services/web3/web3.dart';
import 'package:daobao/shared/auth/auth_bloc.dart';
import 'package:daobao/shared/auth/auth_guard.dart';
import 'package:daobao/src/injectable.dart';
import 'package:daobao/src/proposals/proposal_components.dart';
import 'package:daobao/src/stake/cubit/balances_cubit.dart';
import 'package:fl_toast/fl_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web3/flutter_web3.dart';
import 'package:lottie/lottie.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StakePage extends StatefulWidget {
  const StakePage({Key? key}) : super(key: key);

  @override
  State<StakePage> createState() => _StakePageState();
}

class _StakePageState extends State<StakePage> {
  final balances = BalancesCubit()..getBalances();
  // final controller = MaskedTextController(mask: '00.000000000000000000');
  bool staking = true;

  @override
  Widget build(BuildContext context) {
    return AuthGuard(
      child: Container(
        color: context.colorScheme.background,
        child: SingleChildScrollView(
          child: ProposalsContainerWrapper(
            width: 800,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: context.colorScheme.secondaryVariant.withOpacity(0.25),
                borderRadius: Radii.lr,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Stake', style: context.textTheme.headline4),
                  const SizedBox(height: 12),
                  StakingSwitch(isStaking: (e) => setState(() => staking = e)),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.colorScheme.secondary,
                        width: 1,
                      ),
                      borderRadius: Radii.lr,
                    ),
                    height: 250,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    child: (context.watch<AuthBloc>().state is Connected)
                        ? FutureBuilder<bool>(
                            future: getIt<Web3Service>().viewDao(
                              'getMembers',
                              [
                                (context.read<AuthBloc>().state as Connected)
                                    .address
                              ],
                            ),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                if (snapshot.data!) {
                                  return Column(
                                    children: [
                                      Expanded(
                                        child: Lottie.network(
                                            'https://assets4.lottiefiles.com/packages/lf20_yc9ywdm7.json'),
                                      ),
                                      Text(
                                        'You are a member!',
                                        style: context.textTheme.headline5,
                                      ),
                                    ],
                                  );
                                } else {
                                  return Column(
                                    children: [
                                      Expanded(
                                        child: Lottie.network(
                                            'https://assets4.lottiefiles.com/packages/lf20_1iNByG.json'),
                                      ),
                                      Text(
                                        'Stake to become a member!',
                                        style: context.textTheme.headline5,
                                      ),
                                    ],
                                  );
                                }
                              }
                              return Center(
                                child: Lottie.network(
                                  'https://assets7.lottiefiles.com/packages/lf20_YMim6w.json',
                                  fit: BoxFit.fitWidth,
                                ),
                              );
                            },
                          )
                        : const SizedBox.shrink(),
                  ),
                  const SizedBox(height: 16),
                  if (context.watch<AuthBloc>().state is Connected) ...[
                    FutureBuilder<BigInt>(
                      future: getIt<Web3Service>().allowance(
                        staking ? kWMATIC : kDaobao,
                        (context.read<AuthBloc>().state as Connected).address,
                        kDao,
                        80001,
                      ),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) return const SizedBox.shrink();
                        if (snapshot.data! > BigInt.from(1e18)) {
                          return FutureBuilder<bool>(
                            future: getIt<Web3Service>().viewDao(
                              'getMembers',
                              [
                                (context.read<AuthBloc>().state as Connected)
                                    .address
                              ],
                            ),
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return const CupertinoActivityIndicator();
                              }
                              if ((snapshot.data! && !staking) ||
                                  (!snapshot.data! && staking)) {
                                return TransparentButton(
                                  onPressed: () async {
                                    try {
                                      await (await getIt<Web3Service>().sendDao(
                                              staking ? 'stake' : 'withdraw'))
                                          .wait();
                                      context.router.pushNamed('stake');
                                    } on EthereumException catch (e) {
                                      if (balances.state.wmatic < 0.2) {
                                        showTextToast(
                                            text: 'Not enough WMATIC',
                                            context: context);
                                        return;
                                      }
                                      showTextToast(
                                          text: e.message, context: context);
                                    } catch (e) {
                                      showTextToast(
                                          text: e.toString(), context: context);
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: Radii.mr,
                                      border: Border.all(
                                        color: context.colorScheme.secondary,
                                        width: 1,
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 32, vertical: 8),
                                    child: Text(
                                      staking ? 'Stake' : 'Withdraw',
                                      style:
                                          context.textTheme.subtitle1!.copyWith(
                                        color: context.colorScheme.secondary,
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return const SizedBox.shrink();
                              }
                            },
                          );
                        }

                        return TransparentButton(
                          onPressed: () async {
                            try {
                              await (await getIt<Web3Service>().approve(
                                staking ? kWMATIC : kDaobao,
                                kDao,
                              ))
                                  .wait();
                              context.router.pushNamed('stake');
                            } catch (e) {
                              showTextToast(
                                  text: e.toString(), context: context);
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: Radii.mr,
                              border: Border.all(
                                color: context.colorScheme.secondary,
                                width: 1,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 8),
                            child: Text(
                              'Approve',
                              style: context.textTheme.subtitle1!.copyWith(
                                color: context.colorScheme.secondary,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                  const SizedBox(height: 12),
                  Text('Balances', style: context.textTheme.headline4),
                  const SizedBox(height: 12),
                  if (context.watch<AuthBloc>().state is Connected)
                    BlocProvider.value(
                      value: balances..getBalances(),
                      child: BlocBuilder<BalancesCubit, BalancesState>(
                        builder: (context, state) {
                          return state.when(
                            loading: (_, __) =>
                                const CircularProgressIndicator(),
                            balances: (daob, wmatic) => Column(
                              children: [
                                Row(
                                  children: [
                                    SelectableText(
                                      'WMATIC',
                                      style: context.textTheme.subtitle1,
                                    ),
                                    const Spacer(),
                                    SelectableText(wmatic.toString()),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  children: [
                                    SelectableText(
                                      'DAOB',
                                      style: context.textTheme.subtitle1,
                                    ),
                                    const Spacer(),
                                    SelectableText(daob.toString()),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StakingSwitch extends StatefulWidget {
  const StakingSwitch({Key? key, this.isStaking}) : super(key: key);

  final ValueChanged<bool>? isStaking;

  @override
  State<StakingSwitch> createState() => _StakingSwitchState();
}

class _StakingSwitchState extends State<StakingSwitch> {
  bool staking = true;

  void isStaking(bool staking) => setState(() {
        this.staking = staking;
        widget.isStaking?.call(staking);
      });

  @override
  Widget build(BuildContext context) {
    const kDefaultDuration = Duration(milliseconds: 100);

    return Row(
      children: [
        TransparentButton(
          onPressed: () => isStaking(true),
          child: AnimatedContainer(
            width: 80,
            duration: kDefaultDuration,
            decoration: BoxDecoration(
              borderRadius: Radii.mr,
              color: staking ? context.colorScheme.primary : null,
              border: Border.all(
                color: context.colorScheme.primary,
                width: 1,
              ),
            ),
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: AnimatedDefaultTextStyle(
              duration: kDefaultDuration,
              style: context.textTheme.subtitle1!.copyWith(
                color: staking
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.primary,
              ),
              child: const Text('Stake'),
            ),
          ),
        ),
        const SizedBox(width: 12),
        TransparentButton(
          onPressed: () => isStaking(false),
          child: AnimatedContainer(
            width: 80,
            duration: kDefaultDuration,
            decoration: BoxDecoration(
              borderRadius: Radii.mr,
              color: !staking ? context.colorScheme.primary : null,
              border: Border.all(
                color: context.colorScheme.primary,
                width: 1,
              ),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: AnimatedDefaultTextStyle(
              duration: kDefaultDuration,
              style: context.textTheme.subtitle1!.copyWith(
                color: !staking
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.primary,
              ),
              child: const Text('Unstake'),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:daobao/components/components.dart';
import 'package:daobao/helpers/extensions.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:daobao/shared/auth/auth_bloc.dart';
import 'package:daobao/src/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import 'injectable.dart';

/// The Widget that configures your application.
class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
            value: getIt<AuthBloc>()..add(const AuthEvent.checkSupported())),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        restorationScopeId: 'app',
        localizationsDelegates: const [
          // AppLocalizations.delegate,
          // GlobalMaterialLocalizations.delegate,
          // GlobalWidgetsLocalizations.delegate,
          // GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English, no country code
        ],
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Styles.blue,
            primaryVariant: Styles.lightBlue,
            secondary: Styles.orange,
            secondaryVariant: Styles.lightYellow,
            background: Styles.paper,
          ),
          scaffoldBackgroundColor: Styles.paper,
          backgroundColor: Styles.paper,
          textTheme: GoogleFonts.nunitoTextTheme(),
          primaryTextTheme: GoogleFonts.interTextTheme(),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: Radii.lr,
              borderSide: const BorderSide(color: Styles.blue, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: Radii.lr,
              borderSide: const BorderSide(color: Styles.blue, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: Radii.lr,
              borderSide: const BorderSide(color: Styles.blue, width: 1),
            ),
          ),
        ),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.light,
      ),
    );
  }
}

class HomeWrapperPage extends StatelessWidget {
  HomeWrapperPage({Key? key}) : super(key: key);

  final heroC = HeroController();

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      navigatorObservers: () => [heroC],
      builder: (context, child) {
        return Scaffold(
          backgroundColor: context.colorScheme.background.withOpacity(0.8),
          body: Column(
            children: [
              Container(
                color: context.colorScheme.surface,
                height: 80,
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TransparentButton(
                            onPressed: () =>
                                context.router.root.push(const HomeRoute()),
                            child: Image.network(
                              'https://i.imgur.com/YP9h75H.png',
                              width: 36,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const UnderlinedNavigationBar(),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            return Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TransparentButton(
                                    onPressed: state is! Connected
                                        ? () => context
                                            .read<AuthBloc>()
                                            .add(const Connect())
                                        : null,
                                    child: Container(
                                      padding:
                                          const EdgeInsets.fromLTRB(12, 8, 12, 8),
                                      decoration: BoxDecoration(
                                        color: context.colorScheme.surface,
                                        border: Border.all(
                                          width: 1,
                                          color: context.colorScheme.onSurface,
                                        ),
                                        borderRadius: Radii.mr,
                                      ),
                                      child: Text(
                                        (state is Connected)
                                            ? '${state.address.substring(0, 5)}...${state.address.substring(state.address.length - 4, state.address.length)}'
                                            : 'Connect',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  if (state is Connected)
                                    TransparentButton(
                                      onPressed: () => context
                                          .read<AuthBloc>()
                                          .add(const Disconnect()),
                                      child: const Icon(IconlyLight.logout),
                                    ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
              Expanded(child: child),
            ],
          ),
        );
      },
    );
  }
}

class UnderlinedNavigationBar extends StatefulWidget {
  const UnderlinedNavigationBar({Key? key}) : super(key: key);

  @override
  _UnderlinedNavigationBarState createState() =>
      _UnderlinedNavigationBarState();
}

class _UnderlinedNavigationBarState extends State<UnderlinedNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final List<String> segments = context.router.current.path.split('/');
    final String segment = segments.isNotEmpty ? segments.first : '';
    const Duration kDefaultDur = Duration(milliseconds: 150);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        UnderlinedButton(
          onTap: () => context.router.push(const HomeRoute()),
          child: AnimatedDefaultTextStyle(
            style: context.textTheme.headline6!.copyWith(
                color:
                    (segment == 'home') ? context.colorScheme.primary : null),
            duration: kDefaultDur,
            child: const Text('Home'),
          ),
        ),
        const SizedBox(width: 24),
        UnderlinedButton(
          onTap: () => context.router.push(const ProposalHistoryRoute()),
          child: AnimatedDefaultTextStyle(
            style: context.textTheme.headline6!.copyWith(
                color: (segment == 'proposals')
                    ? context.colorScheme.primary
                    : null),
            duration: kDefaultDur,
            child: const Text('Proposals'),
          ),
        ),
        const SizedBox(width: 24),
        UnderlinedButton(
          onTap: () => context.router.push(const AboutRoute()),
          child: AnimatedDefaultTextStyle(
            style: context.textTheme.headline6!.copyWith(
                color:
                    (segment == 'about') ? context.colorScheme.primary : null),
            duration: kDefaultDur,
            child: const Text('About'),
          ),
        ),
        const SizedBox(width: 24),
        UnderlinedButton(
          onTap: () => context.router.push(const StakeRoute()),
          child: AnimatedDefaultTextStyle(
            style: context.textTheme.headline6!.copyWith(
                color:
                    (segment == 'stake') ? context.colorScheme.primary : null),
            duration: kDefaultDur,
            child: const Text('Stake'),
          ),
        ),
        const SizedBox(width: 24),
        UnderlinedButton(
          onTap: () => context.router.push(const WinnerRoute()),
          child: AnimatedDefaultTextStyle(
            style: context.textTheme.headline6!.copyWith(
                color:
                    (segment == 'winner') ? context.colorScheme.primary : null),
            duration: kDefaultDur,
            child: const Text('Winner'),
          ),
        ),
      ],
    );
  }
}

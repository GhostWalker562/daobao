import 'package:auto_route/auto_route.dart';
import 'package:daobao/components/components.dart';
import 'package:daobao/helpers/extensions.dart';
import 'package:daobao/helpers/helpers.dart';
import 'package:daobao/src/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

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
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      restorationScopeId: 'app',
      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
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
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
    );
  }
}

class HomeWrapperPage extends StatelessWidget {
  const HomeWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, child) {
        return Scaffold(
          backgroundColor: context.colorScheme.background.withOpacity(0.8),
          body: Column(
            children: [
              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(12),
                        alignment: Alignment.centerLeft,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TransparentButton(
                            onPressed: () => context.router.pushNamed(''),
                            child: SvgPicture.asset(
                              'images/logo/logo.svg',
                              width: 36,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TransparentTextButton(
                          text: 'Home',
                          onPressed: () => context.router.pushNamed(''),
                        ),
                        const SizedBox(width: 8),
                        TransparentTextButton(
                          text: 'Proposals',
                          onPressed: () =>
                              context.router.pushNamed('proposals'),
                        ),
                        const SizedBox(width: 8),
                        TransparentTextButton(text: 'About'),
                      ],
                    ),
                    Flexible(child: Container()),
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

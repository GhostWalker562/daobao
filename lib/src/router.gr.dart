// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<HomeWrapperRouteArgs>(
          orElse: () => const HomeWrapperRouteArgs());
      return CustomPage<dynamic>(
          routeData: routeData,
          child: HomeWrapperPage(key: args.key),
          transitionsBuilder: transition,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const HomePage(),
          transitionsBuilder: transition,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    ProposalHistoryRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ProposalHistoryPage(),
          transitionsBuilder: transition,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    ProposalCreateRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ProposalCreatePage(),
          transitionsBuilder: transition,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    ProposalsDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProposalsDetailsRouteArgs>(
          orElse: () => ProposalsDetailsRouteArgs(id: pathParams.getInt('id')));
      return CustomPage<dynamic>(
          routeData: routeData,
          child: ProposalsDetailsPage(key: args.key, id: args.id),
          transitionsBuilder: transition,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    AboutRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AboutPage(),
          transitionsBuilder: transition,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    StakeRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const StakePage(),
          transitionsBuilder: transition,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    },
    WinnerRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const WinnerPage(),
          transitionsBuilder: transition,
          durationInMilliseconds: 100,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeWrapperRoute.name, path: '/', children: [
          RouteConfig('#redirect',
              path: '',
              parent: HomeWrapperRoute.name,
              redirectTo: 'home',
              fullMatch: true),
          RouteConfig(HomeRoute.name,
              path: 'home', parent: HomeWrapperRoute.name),
          RouteConfig(ProposalHistoryRoute.name,
              path: 'proposals/history', parent: HomeWrapperRoute.name),
          RouteConfig(ProposalCreateRoute.name,
              path: 'proposals/create', parent: HomeWrapperRoute.name),
          RouteConfig(ProposalsDetailsRoute.name,
              path: 'proposals/:id', parent: HomeWrapperRoute.name),
          RouteConfig('proposals/*#redirect',
              path: 'proposals/*',
              parent: HomeWrapperRoute.name,
              redirectTo: 'proposals/history',
              fullMatch: true),
          RouteConfig(AboutRoute.name,
              path: 'about', parent: HomeWrapperRoute.name),
          RouteConfig(StakeRoute.name,
              path: 'stake', parent: HomeWrapperRoute.name),
          RouteConfig(WinnerRoute.name,
              path: 'winner', parent: HomeWrapperRoute.name),
          RouteConfig('*#redirect',
              path: '*',
              parent: HomeWrapperRoute.name,
              redirectTo: 'home',
              fullMatch: true)
        ])
      ];
}

/// generated route for [HomeWrapperPage]
class HomeWrapperRoute extends PageRouteInfo<HomeWrapperRouteArgs> {
  HomeWrapperRoute({Key? key, List<PageRouteInfo>? children})
      : super(name,
            path: '/',
            args: HomeWrapperRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'HomeWrapperRoute';
}

class HomeWrapperRouteArgs {
  const HomeWrapperRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeWrapperRouteArgs{key: $key}';
  }
}

/// generated route for [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for [ProposalHistoryPage]
class ProposalHistoryRoute extends PageRouteInfo<void> {
  const ProposalHistoryRoute() : super(name, path: 'proposals/history');

  static const String name = 'ProposalHistoryRoute';
}

/// generated route for [ProposalCreatePage]
class ProposalCreateRoute extends PageRouteInfo<void> {
  const ProposalCreateRoute() : super(name, path: 'proposals/create');

  static const String name = 'ProposalCreateRoute';
}

/// generated route for [ProposalsDetailsPage]
class ProposalsDetailsRoute extends PageRouteInfo<ProposalsDetailsRouteArgs> {
  ProposalsDetailsRoute({Key? key, required int id})
      : super(name,
            path: 'proposals/:id',
            args: ProposalsDetailsRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'ProposalsDetailsRoute';
}

class ProposalsDetailsRouteArgs {
  const ProposalsDetailsRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'ProposalsDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute() : super(name, path: 'about');

  static const String name = 'AboutRoute';
}

/// generated route for [StakePage]
class StakeRoute extends PageRouteInfo<void> {
  const StakeRoute() : super(name, path: 'stake');

  static const String name = 'StakeRoute';
}

/// generated route for [WinnerPage]
class WinnerRoute extends PageRouteInfo<void> {
  const WinnerRoute() : super(name, path: 'winner');

  static const String name = 'WinnerRoute';
}

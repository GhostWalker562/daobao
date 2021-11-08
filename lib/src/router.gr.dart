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
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const HomeWrapperPage(),
          transitionsBuilder: transition,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const HomePage(),
          transitionsBuilder: transition,
          opaque: true,
          barrierDismissible: false);
    },
    ProposalsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ProposalsPage(),
          transitionsBuilder: transition,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeWrapperRoute.name, path: '/', children: [
          RouteConfig(HomeRoute.name, path: '', parent: HomeWrapperRoute.name),
          RouteConfig(ProposalsRoute.name,
              path: 'proposals', parent: HomeWrapperRoute.name)
        ])
      ];
}

/// generated route for [HomeWrapperPage]
class HomeWrapperRoute extends PageRouteInfo<void> {
  const HomeWrapperRoute({List<PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeWrapperRoute';
}

/// generated route for [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for [ProposalsPage]
class ProposalsRoute extends PageRouteInfo<void> {
  const ProposalsRoute() : super(name, path: 'proposals');

  static const String name = 'ProposalsRoute';
}

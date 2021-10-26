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
    SampleItemListRoute.name: (routeData) {
      final args = routeData.argsAs<SampleItemListRouteArgs>(
          orElse: () => const SampleItemListRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: SampleItemListPage(key: args.key, items: args.items));
    }
  };

  @override
  List<RouteConfig> get routes =>
      [RouteConfig(SampleItemListRoute.name, path: '/')];
}

/// generated route for [SampleItemListPage]
class SampleItemListRoute extends PageRouteInfo<SampleItemListRouteArgs> {
  SampleItemListRoute(
      {Key? key,
      List<SampleItem> items = const [
        SampleItem(1),
        SampleItem(2),
        SampleItem(3)
      ]})
      : super(name,
            path: '/', args: SampleItemListRouteArgs(key: key, items: items));

  static const String name = 'SampleItemListRoute';
}

class SampleItemListRouteArgs {
  const SampleItemListRouteArgs(
      {this.key,
      this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)]});

  final Key? key;

  final List<SampleItem> items;
}

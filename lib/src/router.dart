import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daobao/src/app.dart';
import 'package:daobao/src/proposals/proposals_page.dart';
import 'package:daobao/src/sample_feature/sample_item.dart';
import 'package:daobao/src/sample_feature/sample_item_list_view.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';

part 'router.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: transition,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeWrapperPage,
      initial: true,
      path: '/',
      children: [
        AutoRoute(page: HomePage, path: ''),
        AutoRoute(page: ProposalsPage, path: 'proposals'),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}

Widget transition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(
    opacity: animation,
    child: child,
  );
}

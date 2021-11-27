import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daobao/src/app.dart';
import 'package:daobao/src/proposals/proposal_details_page.dart';
import 'package:daobao/src/proposals/proposal_history_page.dart';
import 'package:daobao/src/stake/stake_page.dart';
import 'package:flutter/material.dart';

import 'about/about_page.dart';
import 'home/home_page.dart';
import 'proposals/proposal_create_page.dart';

export 'package:auto_route/auto_route.dart';

part 'router.gr.dart';

@CustomAutoRouter(
  durationInMilliseconds: 100,
  reverseDurationInMilliseconds: 100,
  transitionsBuilder: transition,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeWrapperPage,
      path: '/',
      children: [
        AutoRoute(page: HomePage, path: 'home', initial: true),
        AutoRoute(
          page: ProposalHistoryPage,
          path: 'proposals/history',
        ),
        AutoRoute(
          page: ProposalCreatePage,
          path: 'proposals/create',
        ),
        AutoRoute(
          page: ProposalsDetailsPage,
          path: 'proposals/:id',
        ),
        RedirectRoute(
          path: 'proposals/*',
          redirectTo: 'proposals/history',
        ),
        AutoRoute(page: AboutPage, path: 'about'),
        AutoRoute(page: StakePage, path: 'stake'),
        RedirectRoute(path: '*', redirectTo: 'home'),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}

Widget transition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(opacity: animation, child: child);
}

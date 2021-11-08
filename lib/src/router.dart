import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:daobao/src/sample_feature/sample_item.dart';
import 'package:daobao/src/sample_feature/sample_item_details_view.dart';
import 'package:daobao/src/sample_feature/sample_item_list_view.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@MaterialAutoRouter(      
  replaceInRouteName: 'Page,Route',      
  routes: <AutoRoute>[      
    AutoRoute(page: SampleItemListPage, initial: true),      
  ],      
)      
class AppRouter extends _$AppRouter{}     
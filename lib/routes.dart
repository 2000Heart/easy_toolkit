import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import 'form_file_page.dart';
import 'home_page.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class Routes extends _$Routes{

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page,path: "/home",initial: true),
    AutoRoute(page: FormFileRoute.page,path: '/tools/form')
  ];
}
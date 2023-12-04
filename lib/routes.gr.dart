// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$Routes extends RootStackRouter {
  // ignore: unused_element
  _$Routes({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    FormFileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FormFilePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
  };
}

/// generated route for
/// [FormFilePage]
class FormFileRoute extends PageRouteInfo<void> {
  const FormFileRoute({List<PageRouteInfo>? children})
      : super(
          FormFileRoute.name,
          initialChildren: children,
        );

  static const String name = 'FormFileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

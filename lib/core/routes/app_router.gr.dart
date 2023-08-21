// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:portfolio/view/home.dart' as _i1;
import 'package:portfolio/view/login.dart' as _i2;
import 'package:portfolio/view/repositories.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    LoginView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    RepositoryView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RepositoryView(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeView extends _i4.PageRouteInfo<void> {
  const HomeView({List<_i4.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i4.PageRouteInfo<void> {
  const LoginView({List<_i4.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RepositoryView]
class RepositoryView extends _i4.PageRouteInfo<void> {
  const RepositoryView({List<_i4.PageRouteInfo>? children})
      : super(
          RepositoryView.name,
          initialChildren: children,
        );

  static const String name = 'RepositoryView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

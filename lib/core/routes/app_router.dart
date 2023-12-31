import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: LoginView.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            page: HomeView.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            page: RepositoryView.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),
      ];
}

import 'package:flutter/material.dart';
import 'package:flutter_ramen/app/register_routes.dart';
import 'package:lb_flutter_utilities/app/service_collection.dart';
import 'package:lb_flutter_utilities/utils/interfaces/routes.dart';

class Routes extends IRoutes {
  final routes = sl.get<RegisterRoutes>().routes;

  @override
  PageRoute? getPageRouteBySettings(RouteSettings settings) {
    var pageCallback = routes[settings.name];
    if (pageCallback == null) return null;

    return getCupertinoPageRoute(
      page: pageCallback(settings),
      settings: settings,
    );
  }

  @override
  Widget pageNotFound(RouteSettings settings) {
    // TODO: implement pageNotFound
    throw UnimplementedError();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ramen/app/page_name.dart';
import 'package:flutter_ramen/presentation/menu/menu_page.dart';
import 'package:flutter_ramen/presentation/shared/dashboard/dashboard_page.dart';
import 'package:flutter_ramen/presentation/shared/pdf_view/pdf_view_page.dart';
import 'package:flutter_ramen/presentation/shared/web_view/web_view_page.dart';

class RegisterRoutes {
  final Map<String, Widget Function(RouteSettings)> _routes = {};

  Map<String, Widget Function(RouteSettings)> get routes => _routes;

  RegisterRoutes() {
    _registerMenu();
    _registerShared();
  }

  void _registerMenu() {
    Map<String, Widget Function(RouteSettings)> menuRoutes = {
      PageName.menuPage: (settings) => const MenuPage(),
    };

    _routes.addAll(menuRoutes);
  }

  void _registerShared() {
    Map<String, Widget Function(RouteSettings)> supportRoutes = {
      PageName.dashboardPage: (settings) => const DashboardPage(),
      PageName.pdfPage: (settings) => PdfViewPage(settings.arguments as String),
      PageName.webViewPage: (settings) =>
          WebViewPage(settings.arguments as WebViewPageArgs),
    };

    _routes.addAll(supportRoutes);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ramen/app/app_config.dart';
import 'package:flutter_ramen/app/local_storage.dart';
import 'package:flutter_ramen/app/page_name.dart';
import 'package:flutter_ramen/app/register_routes.dart';
import 'package:flutter_ramen/app/routes.dart';
import 'package:flutter_ramen/resources/themes/themeHermesDark.dart';
import 'package:lb_flutter_utilities/app/flutter_app.dart';
import 'package:lb_flutter_utilities/app/service_collection.dart';
import 'package:lb_flutter_utilities/utils/interfaces/routes.dart';

class RamenApp extends FlutterApp {
  RamenApp(AppConfig config) {
    sl.registerSingleton<AppConfig>(config);
  }

  @override
  String get appName => "Flutter Ramen";

  @override
  Locale get defaultLocale => supportedLocale[0];

  @override
  ThemeData get defaultTheme => supportedTheme[0];

  @override
  bool get hasSplashScreen => false;

  @override
  String get initialRouteName => PageName.menuPage;

  @override
  bool get isLogEnabled => true;

  @override
  Widget get loaderWidget => const CircularProgressIndicator();

  @override
  IRoutes get routes => Routes();

  @override
  List<Locale> get supportedLocale => const [Locale("en")];

  @override
  List<ThemeData> get supportedTheme => [themeHermesDark];

  @override
  Future onRegisterDependency() async {
    sl.registerSingleton(RegisterRoutes());
    sl.registerSingleton(LocalStorage());
  }
}

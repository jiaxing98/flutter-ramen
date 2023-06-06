import 'package:flutter_ramen/app/app_config.dart';

class DevAppConfig extends AppConfig {
  DevAppConfig()
      : super(
          baseUrl: "http://localhost:",
          currencyCode: "\$",
          envText: "Dev",
        );
}

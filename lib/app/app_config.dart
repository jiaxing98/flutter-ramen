abstract class AppConfig {
  final String baseUrl;
  final String currencyCode;
  final String envText;

  AppConfig({
    required this.baseUrl,
    required this.currencyCode,
    required this.envText,
  });
}

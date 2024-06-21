class BaseURL {
  BaseURL._();
  static BaseURL? _instance;

  static BaseURL get getInstance => _instance ??= BaseURL._();

  String baseUrl = '';

  void setBaseUrl(String newUrl) {
    baseUrl = newUrl;
  }

  String getBaseUrl() {
    return baseUrl;
  }
}

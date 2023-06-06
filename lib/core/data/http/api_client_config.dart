class ApiClientConfig {
  final String baseUrl;
  final String otpBaseUrl;
  final String otpAppId;
  final String googleBaseUrl;
  final String googleApiKey;
  final bool isDebug;

  ApiClientConfig(
      {required this.baseUrl,
        required this.isDebug,
        required this.otpBaseUrl,
        required this.otpAppId,
        required this.googleBaseUrl, required this.googleApiKey});

  bool get isNotDebug {
    return !isDebug;
  }
}

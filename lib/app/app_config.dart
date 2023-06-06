import '../core/data/http/api_client_config.dart';

class AppConfig {
  static const String _prodEnvName = "production";
  static const String _devEnvName = "development";

  late final String apiBaseUrl;
  late final String otpBaseUrl;
  late final String otpAppId;
  late final String googleBaseUrl;
  late final String googleApiKey;
  final String environment = _prodEnvName;
  late final bool debug;

  static final _appConfig = AppConfig._internal();

  AppConfig._internal();

  bool isProduction() {
    return environment == _prodEnvName;
  }

  bool isDevelopment() {
    return environment == _devEnvName;
  }

  bool isDebug() {
    return debug;
  }

  bool isNotDebug() {
    return !debug;
  }

  ApiClientConfig getApiClientConfig() {
    return ApiClientConfig(
      baseUrl: apiBaseUrl,
      otpBaseUrl: apiBaseUrl,
      otpAppId: otpAppId,
      googleBaseUrl: googleBaseUrl,
      googleApiKey: googleApiKey,
      isDebug: debug,
    );
  }

  factory AppConfig() {
    return _appConfig;
  }

  loadData(Map<String, dynamic> map) {
    apiBaseUrl = map['API_BASE_URL'];
    otpBaseUrl = map['OTP_BASE_URL'];
    otpAppId = map['OTP_APP_ID'];
    googleBaseUrl = map['GOOGLE_BASE_URL'];
    googleApiKey = map['GOOGLE_API_KEY'];
    debug = map['DEBUG'] == true;
  }
}

final AppConfig appConfig = AppConfig();

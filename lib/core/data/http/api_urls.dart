import '../../../app/app_config.dart';

class ApiUrl{
  static final baseUrl = appConfig.getApiClientConfig().baseUrl;
  static final googleUrl = appConfig.getApiClientConfig().googleBaseUrl;
  static final googleApiKey = appConfig.getApiClientConfig().googleApiKey;

  // static final getGenreList = "$baseUrl/api/v1/influencer/genre";
  // static final getProfile = "$baseUrl/api/v1/influencer/profile/info";
  // static final completeProfile = "$baseUrl/api/v1/influencer/profile/complete-profile";
  // static const getStartInstagramCodeFlow = 'https://api.instagram.com/oauth/authorize?client_id=267761135592907&redirect_uri=https://localhost:4433/instagram-auth&scope=user_profile,user_media&response_type=code';
  // static final connectInstagram = "$baseUrl/api/v1/influencer/social/connect-instagram";
  // static final getInstagramData = "$baseUrl/api/v1/influencer/social/connected";
  static final refreshToken = '$baseUrl/api/v1/influencer/auth/refresh-token';
  // static final verifyGoogle = '$baseUrl/api/v1/influencer/auth/verify/google-auth-token';
  // static final verifyApple = '$baseUrl/api/v1/influencer/auth/verify/apple-auth-token';
  // static final infoUpdate = '$baseUrl/api/v1/influencer/profile/info-update';
  // static final getSearchHistory = '$baseUrl/api/v1/influencer/profile/search-history';
  // static final getServiceCategory = '$baseUrl/api/v1/campaigns/category';
  // static final postSearchHistory = '$baseUrl/api/v1/influencer/campaigns/search-history';
  //
  // static final login = "$baseUrl/api/v1/influencer/auth/authenticate";
// static getQrData(code) => "$baseUrl/qrc/$code/show";
// static getTimelineDetails(int id) => "$baseUrl/stock/timeline/$id/details";

}
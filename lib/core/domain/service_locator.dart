import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:playgon/app/app_config.dart';
import 'package:playgon/core/data/cache/base_cache.dart';
import 'package:playgon/core/data/cache/preference_cache.dart';
import 'package:playgon/core/data/http/api_client.dart';
import 'package:playgon/core/data/http/api_client_config.dart';
// import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> setUpServiceLocator(AppConfig appConfig) async {
  ///may need
  // //check if user logged in or not
  // serviceLocator.registerFactory<CheckUserLoginStatus>(
  //       () => CheckUserLoginStatusImpl(),
  // );
  // //usecase
  // serviceLocator.registerFactory<LoginUserUsecase>(() => LoginUserUsecase());
  //
  // //datasource
  // serviceLocator.registerFactory<LoginRemoteDataSource>(
  //         () => LoginRemoteDataSourceImpl());
  //
  // //repositories
  // serviceLocator
  //     .registerFactory<LoginUserRepository>(() => LoginUserRepositoryImpl());

// //homepage user
// //usecase
//   serviceLocator
//       .registerFactory<GetLocalUserUsecase>(() => GetLocalUserUsecase());

  // //datasource
  // serviceLocator.registerFactory<HomepageLocalUserDataSource>(
  //     () => HomepageLocalUserDataSourceImlp());

  // //repositories
  // serviceLocator
  //     .registerFactory<HomepageRepository>(() => HomepageRepositoryImpl());
// //homepage products
// //usecase
//   serviceLocator
//       .registerFactory<GetProductsFromServer>(() => GetProductsFromServer());

  // //datasource
  // serviceLocator.registerFactory<ProductsRemoteDataSource>(
  //     () => ProductsRemoteDataSourceImpl());

  // //services
  // serviceLocator.registerSingleton<UserCacheService>(UserCacheService());
  // //external
  // final sharedPreferences = await SharedPreferences.getInstance();
  // serviceLocator.registerFactory<SharedPreferences>(() => sharedPreferences);
  // // request
  // serviceLocator.registerSingleton<Request>(Request());



  serviceLocator.registerFactory<ApiClient>(() => ApiClient(
      serviceLocator<ApiClientConfig>(),
      serviceLocator<BaseCache>(),
      Logger()));
  serviceLocator.registerFactory<BaseCache>(() => PreferenceCache());

  serviceLocator.registerFactory<ApiClientConfig>(() => ApiClientConfig(
      baseUrl: appConfig.apiBaseUrl,
      isDebug: appConfig.debug,
      otpAppId: appConfig.otpAppId,
      googleBaseUrl: appConfig.googleBaseUrl,
      googleApiKey: appConfig.googleApiKey,
      otpBaseUrl: appConfig.otpBaseUrl));

  // /// for sns linking
  // serviceLocator.registerFactory<SNSRepository>(() => SNSHttpRepositoryImpl());
  // // serviceLocator.registerFactory<SNSLinkingHttpDatasource>(() => SNSLinkingHttpDatasourceImpl());
  // serviceLocator.registerFactory<SNSLinkingHttpDatasourceImpl>(() => SNSLinkingHttpDatasourceImpl());
  // serviceLocator.registerFactory<SNSLinkingHttpUseCase>(() => SNSLinkingHttpUseCase());
  // /// end of sns linkin dependency inversion
  // /// for map
  //
  // serviceLocator.registerFactory<MapUseCase>(() => MapUseCase());
  //
  //
  // serviceLocator.registerFactory<OtpRemoteDataSource>(() => OtpRemoteDataSourceImpl());
  // serviceLocator.registerFactory<CampaignRepository>(() => CampaignDataSource());

}

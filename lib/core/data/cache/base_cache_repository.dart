import 'package:playgon/core/data/cache/base_cache.dart';
import 'package:playgon/core/data/cache/preference_cache.dart';
import 'package:playgon/core/data/http/base_http_repository.dart';


abstract class BaseCacheRepository {
  BaseCache cache = PreferenceCache();
  BaseHttpRepository repository;

  BaseCacheRepository(this.repository);
}

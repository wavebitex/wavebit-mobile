import 'package:get_it/get_it.dart';
import 'package:wavebitex/data/auth/repository/auth_repo.dart';
import 'package:wavebitex/data/auth/repository/auth_repo_impl.dart';
import 'package:wavebitex/data/auth/service/auth_service.dart';
import 'package:wavebitex/data/auth/service/auth_service_impl.dart';
import 'package:wavebitex/data/core/remote/http_client.dart';

GetIt sl = GetIt.instance;

Future<void> setUpLocator() async {
  sl.registerSingleton<HttpClient>(HttpClient());

  sl.registerLazySingleton<AuthService>(
    () => AuthServiceImpl(
      sl.get(),
    ),
  );

  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(sl.get()),
  );
}

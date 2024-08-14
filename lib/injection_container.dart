//Initialize get it
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Register shared preferences
  sl.registerLazySingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });
}

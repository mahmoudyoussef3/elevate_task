import 'package:get_it/get_it.dart';

import '../Repository/data_repo.dart';
import '../ViewModel/product_model_cubit.dart';
import '../networking/fetch_data.dart';


final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Api>(() => Api());
  getIt.registerLazySingleton<ProductRepository>(() => ProductRepository(getIt<Api>()));
  getIt.registerFactory(() => ProductCubit(getIt<ProductRepository>()));
}

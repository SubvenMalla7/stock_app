import 'package:get_it/get_it.dart';
import 'package:stock_app/feature/dashboard/data/repository_impl/market_repository_impl.dart';
import 'package:stock_app/feature/dashboard/domain/repository_interface/market_interface_repository.dart';
import 'package:stock_app/feature/dashboard/domain/usecase/market_usecase.dart';

GetIt di = GetIt.instance;

Future<void> setupLocator() async {
  // Repository
  di.registerLazySingleton<MarketRepository>(
    () => MarketRepositoryImpl(
      di(),
    ),
  );
  // Data sources
  //Market UsesCase
  di.registerLazySingleton(() => MarketUsecase(repository: di()));
}

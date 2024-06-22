import 'package:stock_app/core/helper/app_type_def.dart';

import 'package:stock_app/feature/dashboard/domain/entities/market_entity_container/market_entity_container.dart';
import 'package:stock_app/feature/dashboard/domain/entities/stock_entity/stock_entity.dart';
import 'package:stock_app/feature/dashboard/domain/repository_interface/market_interface_repository.dart';

class MarketUsecase {
  final MarketRepository repository;

  MarketUsecase({required this.repository});

  //List

  List<StockEntity> minDataList = [];
  List<StockEntity> hourDataList = [];
  List<StockEntity> dayDataList = [];
  List<StockEntity> monthDataList = [];
  List<StockEntity> yearlyDataList = [];

  EitherResponse fetchMarketdata() async {
    return await repository.fetchMarketdata().then((value) {
      value.fold((l) => null, (r) {
        MarketContainer dataContainer = r.data;
        minDataList
          ..clear()
          ..addAll(dataContainer.data?.minute_data ?? []);
        hourDataList
          ..clear()
          ..addAll(dataContainer.data?.hour_data ?? []);
        dayDataList
          ..clear()
          ..addAll(dataContainer.data?.day_data ?? []);
        monthDataList
          ..clear()
          ..addAll(dataContainer.data?.month_data ?? []);
        yearlyDataList
          ..clear()
          ..addAll(dataContainer.data?.yearly_data ?? []);
      });
      return value;
    });
  }

  clearData() {
    minDataList.clear();
    hourDataList.clear();
    dayDataList.clear();
    monthDataList.clear();
    yearlyDataList.clear();
  }
}

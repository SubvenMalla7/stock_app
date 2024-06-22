import 'package:fl_chart/fl_chart.dart';
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

  List<FlSpot> convertData(List<StockEntity> sourceDataList) {
    List<FlSpot> dataList = [];

    for (var i = 0; i < sourceDataList.length; i++) {
      dataList.add(FlSpot(i.toDouble(), sourceDataList[i].index));
    }

    return dataList;
  }

  clearData() {
    minDataList.clear();
    hourDataList.clear();
    dayDataList.clear();
    monthDataList.clear();
    yearlyDataList.clear();
  }
}

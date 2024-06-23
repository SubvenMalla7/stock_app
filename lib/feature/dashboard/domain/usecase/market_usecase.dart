import 'package:fl_chart/fl_chart.dart';
import 'package:stock_app/core/constants/list_constant.dart';
import 'package:stock_app/core/helper/app_type_def.dart';

import 'package:stock_app/feature/dashboard/domain/entities/market_entity_container/market_entity_container.dart';
import 'package:stock_app/feature/dashboard/domain/entities/stock_entity/stock_entity.dart';
import 'package:stock_app/feature/dashboard/domain/repository_interface/market_interface_repository.dart';

class MarketUsecase {
  final MarketRepository repository;

  MarketUsecase({required this.repository});

  //List variables
  List<StockEntity> minDataList = [];
  List<StockEntity> hourDataList = [];
  List<StockEntity> dayDataList = [];
  List<StockEntity> monthDataList = [];
  List<StockEntity> yearlyDataList = [];

  double maxYValue = 0.0;
  double minYValue = 0.0;

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

  List<FlSpot> convertData(String selectedFilter) {
    List<FlSpot> dataList = [];

    List<StockEntity> sourceDataList = getSourceDataSource(selectedFilter);

    for (var i = 0; i < sourceDataList.length; i++) {
      dataList.add(FlSpot(i.toDouble(), sourceDataList[i].index));
    }
    maxYValue = dataList.map((spot) => spot.y).reduce((a, b) => a > b ? a : b);
    minYValue = dataList.map((spot) => spot.y).reduce((a, b) => a < b ? a : b);
    return dataList;
  }

  List<StockEntity> getSourceDataSource(String selectedFilter) {
    if (selectedFilter == filterList[0]) {
      return minDataList;
    } else if (selectedFilter == filterList[1]) {
      return hourDataList;
    } else if (selectedFilter == filterList[2]) {
      return dayDataList;
    } else if (selectedFilter == filterList[3]) {
      return monthDataList;
    } else {
      return yearlyDataList;
    }
  }

  clearData() {
    minDataList.clear();
    hourDataList.clear();
    dayDataList.clear();
    monthDataList.clear();
    yearlyDataList.clear();
  }
}

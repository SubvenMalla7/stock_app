import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
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
  List<StockEntity> currentDataList = [];

  //doubles
  double maxYValue = 0.0;
  double minYValue = 0.0;

  //bool
  bool isMarketOpen = false;

  //String
  String timeLeftBeforeMarketClose = '';

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
    if (dataList.isNotEmpty) {
      maxYValue =
          dataList.map((spot) => spot.y).reduce((a, b) => a > b ? a : b);
      minYValue =
          dataList.map((spot) => spot.y).reduce((a, b) => a < b ? a : b);
    }
    return dataList;
  }

  List<StockEntity> getSourceDataSource(String selectedFilter) {
    currentDataList.clear();
    if (selectedFilter == filterList[0]) {
      currentDataList.addAll(minDataList);
    } else if (selectedFilter == filterList[1]) {
      currentDataList.addAll(hourDataList);
    } else if (selectedFilter == filterList[2]) {
      currentDataList.addAll(dayDataList);
    } else if (selectedFilter == filterList[3]) {
      currentDataList.addAll(monthDataList);
    } else {
      currentDataList.addAll(yearlyDataList);
    }
    return currentDataList;
  }

  bool isNegative(double value) {
    return value < 0;
  }

  String getFormattedDate(DateTime dateTime) {
    DateFormat dateFormat = DateFormat('MMMM dd, yyyy h:mm a');
    return dateFormat.format(dateTime);
  }

  String getToolTipDate(String value) {
    print(value);
    DateFormat dateFormat = DateFormat('MMMM dd, yyyy');

    String dateString = currentDataList
        .firstWhere((element) => element.index.toString() == value)
        .date;

    return "${dateFormat.format(DateTime.parse(dateString))},\n$value";
  }

  checkMarketStatus() {
    // Get the current date and time
    DateTime now = DateTime.now();
    isMarketOpen = false;
    // Define market opening and closing times
    DateTime marketOpenTime = DateTime(now.year, now.month, now.day, 11, 0);
    DateTime marketCloseTime = DateTime(now.year, now.month, now.day, 15, 0);

    // Check if today is a market day (Sunday to Thursday)
    // Check if today is a market day (Sunday to Thursday)
    bool isMarketDay = now.weekday == DateTime.sunday ||
        now.weekday == DateTime.monday ||
        now.weekday == DateTime.tuesday ||
        now.weekday == DateTime.wednesday ||
        now.weekday == DateTime.thursday;

    if (isMarketDay) {
      if (now.isAfter(marketOpenTime) && now.isBefore(marketCloseTime)) {
        isMarketOpen = true;

        // Market is open, calculate time left until it closes
        Duration timeLeft = marketCloseTime.difference(now);

        timeLeftBeforeMarketClose = formatDuration(timeLeft);
      }
    }
  }

  String formatDuration(Duration duration) {
    int hours = duration.inHours;
    int minutes = duration.inMinutes.remainder(60);
    return '${hours} hrs ${minutes} min';
  }

  clearData() {
    minDataList.clear();
    hourDataList.clear();
    dayDataList.clear();
    monthDataList.clear();
    yearlyDataList.clear();
  }
}

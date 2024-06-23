import 'package:fl_chart/fl_chart.dart';
import 'package:stock_app/core/helper/import_helper.dart';
import 'package:stock_app/feature/dashboard/presentation/cubit/market_cubit.dart';

class MarketGraphWidget extends StatelessWidget {
  MarketGraphWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MarketCubit>();
    return StreamBuilder<String>(
        stream: cubit.selectedTabStream,
        builder: (context, snapshot) {
          return Container(
            height: 300.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade200,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: LineChart(
              mainData(
                  context,
                  (snapshot.hasData
                      ? snapshot.data ?? filterList.first
                      : filterList.first)),
            ),
          );
        });
  }

  LineChartData mainData(BuildContext context, String selectedFilter) {
    final usecase = context.read<MarketCubit>().marketUsecase;

    List<FlSpot> dataPoints = usecase.convertData(selectedFilter);

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 5,
        checkToShowHorizontalLine: (value) {
          return value == dataPoints.first.y.floor();
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
          show: false,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minY: usecase.minYValue - 40,
      maxY: usecase.maxYValue + 40,
      minX: 0,
      maxX: dataPoints.length - 1,
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
            return lineBarsSpot.map((LineBarSpot lineBarSpot) {
              return LineTooltipItem(
                '${usecase.getToolTipDate(lineBarSpot.y.toString())}',
                const TextStyle(color: Colors.white),
              );
            }).toList();
          },
        ),
      ),
      lineBarsData: [
        LineChartBarData(
          spots: dataPoints,
          color: Colors.green,
          barWidth: 4,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: false,
          ),
        ),
      ],
    );
  }
}

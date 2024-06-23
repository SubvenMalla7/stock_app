import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_app/core/api/enum.dart';
import 'package:stock_app/core/constants/list_constant.dart';
import 'package:stock_app/core/widget/text_widgets.dart';
import 'package:stock_app/feature/dashboard/domain/entities/market_enity/market_summary_entity.dart';

import 'package:stock_app/feature/dashboard/presentation/cubit/market_cubit.dart';
import 'package:stock_app/feature/dashboard/presentation/widget/dashboard_row_left_widget.dart';
import 'package:stock_app/feature/dashboard/presentation/widget/dashboard_row_right_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    context.read<MarketCubit>().fetchMarketData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          backgroundColor: Colors.white,
        ),
        body: BlocBuilder<MarketCubit, MarketState>(
          builder: (context, state) {
            return state.status == ApiRequestStates.loading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : CreateBody(
                    marketSummaryEntity:
                        state.status == ApiRequestStates.success
                            ? state.marketData?.data?.market_sumary
                            : null,
                  );
          },
        ));
  }
}

class CreateBody extends StatelessWidget {
  const CreateBody({
    super.key,
    this.marketSummaryEntity,
  });
  final MarketSummaryEntity? marketSummaryEntity;
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<MarketCubit>().fetchMarketData(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              20.verticalSpace,
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CreateLeftDetailWidget(marketData: marketSummaryEntity),
                    CreateRightDetailWidget(),
                  ],
                ),
              ),
              14.verticalSpace,
              LineChartSample2(),
              8.verticalSpace,
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    filterList.length,
                    (index) => CreateFilterButton(
                      title: filterList[index],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class CreateFilterButton extends StatelessWidget {
  const CreateFilterButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MarketCubit>();
    return StreamBuilder<String>(
        stream: cubit.selectedTabStream,
        builder: (context, snapshot) {
          return GestureDetector(
            onTap: () => cubit.selectedFilterController.add(title),
            child: Container(
              margin: title == filterList.last
                  ? const EdgeInsets.all(0)
                  : const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                  color: snapshot.data == title
                      ? Color.fromARGB(255, 69, 240, 237)
                      : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              child: BuildText(
                text: title,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        });
  }
}

class LineChartSample2 extends StatelessWidget {
  LineChartSample2({Key? key}) : super(key: key);

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
        checkToShowHorizontalLine: (value) {
          print(value);
          print(dataPoints.first.y.floor());
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

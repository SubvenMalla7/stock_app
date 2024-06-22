import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_app/core/api/enum.dart';

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
    // context.read<MarketCubit>().fetchMarketData();
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
                : CreateBody();
          },
        ));
  }
}

class CreateBody extends StatelessWidget {
  const CreateBody({
    super.key,
  });

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
                    CreateLeftDetailWidget(),
                    CreateRightDetailWidget(),
                  ],
                ),
              ),
              14.verticalSpace,
              LineChartSample2()
            ],
          ),
        ),
      ),
    );
  }
}

class LineChartSample2 extends StatelessWidget {
  LineChartSample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LineChart(
        mainData(context),
      ),
    );
  }

  LineChartData mainData(BuildContext context) {
    final usecase = context.read<MarketCubit>().marketUsecase;

    List<FlSpot> dataPoints = usecase.convertData(usecase.dayDataList);

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        checkToShowHorizontalLine: (value) => value == dataPoints.first.y,
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
      minX: 0,
      maxX: dataPoints.length - 1,
      minY: 0,
      maxY: 10,
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

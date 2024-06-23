import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:stock_app/core/api/enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_app/core/constants/list_constant.dart';
import 'package:stock_app/feature/dashboard/presentation/cubit/market_cubit.dart';
import 'package:stock_app/feature/dashboard/presentation/widget/filter_button_widget.dart';
import 'package:stock_app/feature/dashboard/presentation/widget/market_graph_widget.dart';
import 'package:stock_app/feature/dashboard/presentation/widget/dashboard_row_left_widget.dart';
import 'package:stock_app/feature/dashboard/presentation/widget/dashboard_row_right_widget.dart';
import 'package:stock_app/feature/dashboard/domain/entities/market_enity/market_summary_entity.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    context.read<MarketCubit>().fetchMarketData();
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if ((result == ConnectivityResult.mobile) ||
          result == ConnectivityResult.wifi) {
        context.read<MarketCubit>().fetchMarketData();
      }
    });
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
              MarketGraphWidget(),
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

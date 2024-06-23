import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:stock_app/core/api/enum.dart';
import 'package:stock_app/core/constants/list_constant.dart';
import 'package:stock_app/feature/dashboard/domain/entities/market_entity_container/market_entity_container.dart';
import 'package:stock_app/feature/dashboard/domain/usecase/market_usecase.dart';

part 'market_state.dart';
part 'market_cubit.freezed.dart';

class MarketCubit extends Cubit<MarketState> {
  MarketCubit({required this.marketUsecase}) : super(MarketState());

  final MarketUsecase marketUsecase;

  final selectedFilterController =
      BehaviorSubject<String>.seeded(filterList.first);
  Stream<String> get selectedTabStream => selectedFilterController.stream;

  Future<void> fetchMarketData() async {
    emit(state.copyWith(status: ApiRequestStates.loading));

    final response = await marketUsecase.fetchMarketdata();
    response.fold(
      (l) => emit(state.copyWith(status: ApiRequestStates.error)),
      (r) {
        final MarketContainer hubEntityContainer = r.data;
        emit(
          state.copyWith(
              status: ApiRequestStates.success, marketData: hubEntityContainer),
        );
      },
    );
  }
}

import 'package:stock_app/core/helper/app_type_def.dart';

abstract interface class MarketRepository {
  EitherResponse fetchMarketdata();
}

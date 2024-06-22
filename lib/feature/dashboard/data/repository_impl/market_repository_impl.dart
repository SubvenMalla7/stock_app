import 'package:stock_app/core/api/request.dart';
import 'package:stock_app/core/api/request_client.dart';
import 'package:stock_app/core/api/response.dart';
import 'package:stock_app/core/constants/api_constants.dart';
import 'package:stock_app/core/helper/app_type_def.dart';
import 'package:stock_app/feature/dashboard/domain/entities/market_entity_container/market_entity_container.dart';
import 'package:stock_app/feature/dashboard/domain/repository_interface/market_interface_repository.dart';

class MarketRepositoryImpl implements MarketRepository {
  final RequestClient _client;

  MarketRepositoryImpl(this._client);

  @override
  EitherResponse fetchMarketdata() async {
    var request = _client.get(
        endPoint: ApiConstants.marketData, headers: Request.createHeader());
    return await handleNetworkCall(request, MarketContainer.fromJson);
  }
}

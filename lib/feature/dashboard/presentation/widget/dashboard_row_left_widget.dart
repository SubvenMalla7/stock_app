import 'package:stock_app/core/extension/string_extensions.dart';
import 'package:stock_app/core/helper/import_helper.dart';
import 'package:stock_app/feature/dashboard/domain/entities/market_enity/market_summary_entity.dart';
import 'package:stock_app/feature/dashboard/presentation/cubit/market_cubit.dart';

class CreateLeftDetailWidget extends StatelessWidget {
  const CreateLeftDetailWidget({
    super.key,
    required this.marketData,
  });

  final MarketSummaryEntity? marketData;

  @override
  Widget build(BuildContext context) {
    final useCase = context.read<MarketCubit>().marketUsecase;
    bool isNegative = useCase.isNegative(marketData?.percent_change ?? 0.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildText(
          text: double.parse(marketData?.today_nepse ?? '0')
              .toString()
              .addCommasToNumber(),
          fontSize: 26.sp,
          fontWeight: FontWeight.bold,
        ),
        8.verticalSpace,
        Row(
          children: [
            BuildText(
              text: '2.3 Ar',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
            isNegative
                ? Assets.svg.trendDown.svg(width: 35.w)
                : Assets.svg.trendUpward.svg(width: 35.w),
            BuildText(
              text:
                  '${marketData?.change ?? ''} (${marketData?.percent_change ?? ''}%)',
              fontSize: 18.sp,
              color: isNegative ? Colors.red : Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        BuildText(
          text: 'As of ${useCase.getFormattedDate(DateTime.now())}',
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/core/helper/import_helper.dart';
import 'package:stock_app/feature/dashboard/presentation/cubit/market_cubit.dart';

class CreateRightDetailWidget extends StatelessWidget {
  const CreateRightDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final useCase = context.read<MarketCubit>().marketUsecase;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildText(
                  text: "NEPSE",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        ),
        6.verticalSpace,
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              padding: const EdgeInsets.all(4),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            ),
            4.horizontalSpace,
            BuildText(
              text: "Market",
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            4.horizontalSpace,
            BuildText(
              text: useCase.isMarketOpen ? "OPEN" : "CLOSE",
              fontSize: 14.sp,
              color: useCase.isMarketOpen ? Colors.green : Colors.red,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        8.verticalSpace,
        BuildText(
          text: 'Closes in ${useCase.timeLeftBeforeMarketClose}',
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}

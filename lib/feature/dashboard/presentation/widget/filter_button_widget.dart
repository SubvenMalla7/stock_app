import 'package:stock_app/feature/dashboard/presentation/cubit/market_cubit.dart';

import '../../../../core/helper/import_helper.dart';

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

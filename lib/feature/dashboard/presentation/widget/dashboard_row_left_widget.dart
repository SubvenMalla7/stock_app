import 'package:stock_app/core/helper/import_helper.dart';

class CreateLeftDetailWidget extends StatelessWidget {
  const CreateLeftDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildText(
          text: '1,966.23',
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
            Assets.svg.trendUpward.svg(width: 35.w),
            BuildText(
              text: '5.63 (0.29%)',
              fontSize: 18.sp,
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        BuildText(
          text: 'As of May 09, 2024 3:00 PM',
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}

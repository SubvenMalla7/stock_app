import 'package:stock_app/core/helper/import_helper.dart';

class CreateRightDetailWidget extends StatelessWidget {
  const CreateRightDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              text: "OPEN",
              fontSize: 14.sp,
              color: Colors.green,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
        8.verticalSpace,
        BuildText(
          text: 'Closes in 3 hrs 29 min',
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}

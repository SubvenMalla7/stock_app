import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stock_app/core/widget/text_widgets.dart';
import 'package:stock_app/gen/colors.gen.dart';
import 'package:stock_app/gen/fonts.gen.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.title,
    required this.onTap,
    super.key,
    this.glbKey,
    this.family = FontFamily.manrope,
    this.btnColor = ColorName.primaryColor,
    this.textColor = Colors.white,
    this.borderColor = ColorName.primaryColor,
    this.veticalPadding = 16,
    this.buttonWidth = double.infinity,
    this.isLoader = false,
    this.widget,
    this.height,
    this.boxShadow,
    this.boxShadowEnable = false,
    this.fontWeight = FontWeight.w700,
    this.maxlines = 1,
    this.iconWidget,
    this.borderRadius,
  });

  final String title;
  final dynamic Function()? onTap;
  final Color btnColor;
  final Color textColor;
  final Color borderColor;
  final FontWeight fontWeight;
  final GlobalKey? glbKey;
  final double veticalPadding;
  final double buttonWidth;
  final double? height;
  final double? borderRadius;
  final bool isLoader;
  final Widget? widget;
  final Widget? iconWidget;
  final List<BoxShadow>? boxShadow;
  final String family;
  final bool boxShadowEnable;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // hoverColor: Colors.red,
      // focusColor: Colors.red,
      // highlightColor: Colors.red,
      highlightColor: ColorName.primaryColor,
      splashColor: ColorName.primaryColor,
      key: glbKey,
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: height ?? 54.h,
        width: buttonWidth,
        padding: EdgeInsets.symmetric(vertical: veticalPadding),
        decoration: BoxDecoration(
          color: btnColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
          boxShadow: boxShadowEnable
              ? boxShadow ?? []
              : [
                  const BoxShadow(
                    color: Color(0x9989B7FA),
                    blurRadius: 11,
                    offset: Offset(0, 4),
                  ),
                ],
        ),
        child: isLoader
            ? const CustomWhiteLoader()
            : iconWidget != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [iconWidget!, _createTitleBTN()],
                  )
                : _createTitleBTN(),
      ),
    );
  }

  Center _createTitleBTN() {
    return Center(
      child: BuildText(
        text: title,
        color: textColor,
        family: family,
        fontWeight: fontWeight,
        fontSize: 18.sp,
        maxLines: maxlines,
      ),
    );
  }
}

class CustomWhiteLoader extends StatelessWidget {
  const CustomWhiteLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      child: CircularProgressIndicator(color: Colors.white),
    );
  }
}

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black),
        ),
        child: Icon(
          Icons.arrow_back_ios_new,
          size: 20.h,
        ),
      ),
    );
  }
}

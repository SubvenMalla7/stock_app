import 'package:flutter/material.dart';
import 'package:stock_app/core/widget/text_widgets.dart';
import 'package:stock_app/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRouter.dashboardScreen,
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: Center(
        child: BuildText(
          text: "Stock App",
        ),
      ),
    );
  }
}

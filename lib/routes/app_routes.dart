import 'package:flutter/material.dart';
import 'package:stock_app/feature/dashboard/presentation/screen/dashboard_screen.dart';

class AppRouter {
  const AppRouter._();

  static const String dashboardScreen = '/dashboardScreen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case dashboardScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DashboardScreen(),
        );

      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DashboardScreen(),
          settings: settings,
        );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stock_app/core/service/dependency_injector.dart';
import 'package:stock_app/feature/dashboard/presentation/cubit/market_cubit.dart';

import 'package:stock_app/feature/dashboard/presentation/screen/dashboard_screen.dart';

import 'package:stock_app/l10n/l10n.dart';
import 'package:stock_app/routes/app_routes.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, snap) {
        return MultiProvider(
          providers: [
            BlocProvider(create: (context) => MarketCubit(marketUsecase: di())),
          ],
          child: MaterialApp(
            navigatorKey: navigatorKey,
            theme: ThemeData(
              appBarTheme: AppBarTheme(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              ),
              useMaterial3: true,
            ),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: const DashboardScreen(),
            onGenerateRoute: AppRouter.onGenerateRoute,
          ),
        );
      },
    );
  }
}

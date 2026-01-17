import 'package:flutter/foundation.dart';
import 'package:woobread/main_export.dart';

class WoobReadApp extends StatelessWidget {
  const WoobReadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kDebugMode,
      onGenerateRoute: onGenerateRoute,
      navigatorKey: navService.navKey,
      initialRoute: RouteService.splash,
      theme: ThemeData(
        fontFamily: 'Manrope',
        scaffoldBackgroundColor: AppColors.backgroundColor,
        primaryColor: AppColors.primaryColor,
      ),
      builder: (context, child) {
        Vize.init(context, figmaHeight: 844, figmaWidth: 390);
        return child!;
      },
    );
  }
}

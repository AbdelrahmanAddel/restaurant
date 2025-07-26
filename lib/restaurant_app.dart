import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intern_restaurant/core/routes/app_routes.dart';
import 'package:intern_restaurant/core/routes/routes_strings.dart';

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: generateRoutes,
        initialRoute: RoutesStrings.login,
      ),
    );
  }
}

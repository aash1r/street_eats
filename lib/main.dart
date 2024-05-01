import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:street_eats_vendor/helpers/extensions/extensions.dart';
import 'package:street_eats_vendor/routes.dart';
import 'package:street_eats_vendor/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(context.screenHeight, context.screenWidth),
      builder: (context, child) {
        return Builder(builder: (context) {
          return GetMaterialApp(
            onGenerateRoute: Routes.onGenerateRoute,
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
          );
        });
      },
    );
  }
}

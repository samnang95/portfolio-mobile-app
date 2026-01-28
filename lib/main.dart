import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/app/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Portfolio App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: AppRoutes.splashPage,
      getPages: AppRoutes.routesPage,
    );
  }
}

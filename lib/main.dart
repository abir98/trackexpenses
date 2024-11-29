import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackexpenses/app/routes/app_routes.dart';

import 'app/core/bindings/application_bindings.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses Track',
      initialBinding: ApplicationBindings(),
      initialRoute: AppRoutes.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

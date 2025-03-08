import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workshop_1/pages/home/home_binding.dart';
import 'package:workshop_1/pages/home/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => GetMaterialApp(
        useInheritedMediaQuery: true,
        title: 'Flutter Demo',
        home: HomePage(),
        initialBinding: HomeBinding(),
      ),
    ),
  );
}

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home/home_page.dart';
import 'pages/home/home_binding.dart';
import 'pages/welcome/welcome_binding.dart';
import 'pages/welcome/welcome_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => GetMaterialApp(
        useInheritedMediaQuery: true,
        title: 'Twitter Clone',
        initialRoute: '/welcome',
        getPages: [
          GetPage(
            name: '/welcome',
            page: () => WelcomePage(),
            binding: WelcomeBinding(),
          ),
          GetPage(
            name: '/home',
            page: () => HomePage(),
            binding: HomeBinding(),
          ),
        ],
      ),
    ),
  );
}

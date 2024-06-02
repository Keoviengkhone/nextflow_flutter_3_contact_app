import 'package:contact_app/controllers/contact_controller.dart';
import 'package:contact_app/pages/home_page/home_page.dart';
import 'package:contact_app/pages/new_contact_page/new_contact_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(ContactController());

    return GetMaterialApp(
      title: 'Nextflow Contact App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/new-contact',
          page: () => NewContactPage(),
        ),
      ],
    );
  }
}

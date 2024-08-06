import 'package:assignment/app/pages/controller/pages_controller.dart';
import 'package:assignment/app/pages/view/first_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  // Initialize and register the PagesController with GetX dependency injection.
  Get.put(PagesController());
  // Run the MyApp widget.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // The initial screen of the application.
      home: const FirstPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/splash_screen.dart';

import 'package:get/get.dart';// import get nya


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // ganti ke GetMaterialApp
      debugShowCheckedModeBanner: false,
      title: 'Projek TI 22C',
      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

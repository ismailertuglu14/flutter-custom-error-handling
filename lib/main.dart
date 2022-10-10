import 'package:customerrorhandling/views/custom_error_wiew.dart';
import 'package:customerrorhandling/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      builder: (context, child) {
        ErrorWidget.builder = (FlutterErrorDetails error) {
          return CustomErrorView(error: error);
        };
        return child!;
      },
      home: const HomeView(),
    );
  }
}

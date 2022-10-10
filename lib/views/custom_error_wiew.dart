import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomErrorView extends StatefulWidget {
  final FlutterErrorDetails? error;
  const CustomErrorView({super.key, this.error});
  @override
  State<CustomErrorView> createState() => _CustomErrorViewState();
}

class _CustomErrorViewState extends State<CustomErrorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/error-404.json',
            ),
            Text(
              kDebugMode
                  ? widget.error?.summary.toString() ?? 'Some error occured '
                  : 'Some error occured! Sorry for the inconvenience ',
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

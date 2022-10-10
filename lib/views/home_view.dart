import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<int> list = <int>[1, 2, 3, 4, 5];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home View'),
            Text(list[5].toString()), // List index out of bound exception
          ],
        ),
      ),
    );
  }
}

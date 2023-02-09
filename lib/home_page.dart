import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  Future<void> _handleRefresh() async {
    return await Future.delayed(const Duration(seconds: 2));
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: LiquidPullToRefresh(
          onRefresh: _handleRefresh,
          height: 300,
          color: Colors.deepPurple,
          backgroundColor: Colors.deepPurple[200],
          showChildOpacityTransition: false,
          animSpeedFactor: 2,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 300,
                    color: Colors.deepPurple,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

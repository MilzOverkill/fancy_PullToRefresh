import 'dart:math';

import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  Future<void> _handleRefresh() async {
    //reloading takes some time
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[200],
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.green,
        height: 300,
        backgroundColor: Colors.lightGreen[200],
        animSpeedFactor: 2,
        showChildOpacityTransition:   false,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 300,
                  color: Colors.green,
                ),
              ),
            ),
            Padding(
            padding: const EdgeInsets.all(25.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 300,
                color: Colors.green,
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lcountervs/widgets/timer_tile.dart';
import 'package:lcountervs/widgets/user_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Expanded(
            flex: 2,
            child: UserTile(
              flipped: true
            ),
          ),
          Expanded(
            flex: 1,
            child: TimerTile(),
          ),
          Expanded(
            flex: 2,
            child: UserTile(),
          )
        ],
      ),
    );
  }
}
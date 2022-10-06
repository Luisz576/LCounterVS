import 'package:flutter/material.dart';
import 'package:lcountervs/widgets/user_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: UserTile(
              height: MediaQuery.of(context).size.height - 10,
              flipped: true
            ),
          ),
          Expanded(
            flex: 1,
            child: UserTile(
              height: MediaQuery.of(context).size.height - 10,
            ),
          )
        ],
      ),
    );
  }
}
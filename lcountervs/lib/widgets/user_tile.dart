import 'package:flutter/material.dart';
import 'package:lcountervs/models/user.dart';
import 'package:lcountervs/widgets/user_tile_row.dart';


class UserTile extends StatefulWidget {
  final double? height;
  final bool flipped;
  const UserTile({super.key, this.height, this.flipped = false});

  @override
  State<UserTile> createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  User user = User.start();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UserTileRow(controller: user.life),
            const SizedBox(
              height: 20,
            ),
            UserTileRow(controller: user.magic,)
          ],
        ),
      ),
    );
  }
}
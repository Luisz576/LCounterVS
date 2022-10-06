import 'package:flutter/material.dart';
import 'package:lcountervs/controller/value_controller.dart';

class UserTileRow extends StatefulWidget {
  final ValueController<int> controller;
  const UserTileRow({required this.controller, super.key});

  @override
  State<UserTileRow> createState() => _UserTileRowState();
}

class _UserTileRowState extends State<UserTileRow> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(listener);
  }

  listener(int value){
    print(value);
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
        Expanded(
          flex: 1,
          child: Text("${widget.controller.value}",
            style: const TextStyle(
              fontSize: 28
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              TextButton(
                child: const Text("+",
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),
                onPressed: (){
                  widget.controller.value++;
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                child: const Text("-",
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),
                onPressed: (){
                  widget.controller.value--;
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
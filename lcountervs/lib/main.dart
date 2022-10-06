import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lcountervs/screens/home_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const LCounterVS()));
}

class LCounterVS extends StatelessWidget {
  const LCounterVS({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "LCounterVS",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
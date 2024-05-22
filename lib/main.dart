import 'package:adv_flutter_ch3/ch3/task_1/view/network_error/netwoek_error_screen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Network_Error_Screen(),
    );
  }
}

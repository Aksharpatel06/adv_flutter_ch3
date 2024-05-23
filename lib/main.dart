import 'package:adv_flutter_ch3/ch3/task_1/view/network_error/netwoek_error_screen.dart';
import 'package:adv_flutter_ch3/ch3/task_2/provider/google_provider.dart';
import 'package:adv_flutter_ch3/ch3/task_2/view/googlescreen/google_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ch3/task_2/view/inappwebview/in_app_web_view_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => GoogleProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GoogleScreen(),
    );
  }
}

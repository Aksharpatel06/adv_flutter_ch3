import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'componects/mobile_data.dart';
import 'componects/no_internet.dart';
import 'componects/wifi_data.dart';

class Network_Error_Screen extends StatelessWidget {
  const Network_Error_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (snapshot.data!.contains(ConnectivityResult.mobile)) {
            // RETURN MOBILE DATA
            return mobile_data_connection();
          } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
            // RETURN WIFI
            return wifi_data();
          } else {
            // RETURN NO INTERNET CONNECTION
            return no_internet_connection();
          }
        },
      ),
    );
  }
}

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'componects/mobile_data.dart';
import 'componects/no_internet.dart';

class Network_Error_Screen extends StatelessWidget {
  const Network_Error_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (snapshot.data!.contains(ConnectivityResult.mobile)) {
            // RETURN WIDGET
            return mobile_data_connection();
          } else if (snapshot.data!.contains(ConnectivityResult.wifi)) {
            // RETURN WIDGET
            return SafeArea(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: const Color(0xff2dce57),
                child: Center(
                  child: Container(
                    height: 350,
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 180,child: Image.asset('asset/img/NoConnection.png')),
                        const Text(
                          'Connected to wi-fi',
                          style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17),
                        ),
                        const SizedBox(height: 10,),
                        const SizedBox(
                          width: 280,
                          child: Text(
                            'Your internet successfullly connected',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w200,fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            // RETURN NO INTERNET CONNECTION
            return no_internet_connection();
          }
        },
      ),
    );
  }

}

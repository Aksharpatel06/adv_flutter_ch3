import 'package:adv_flutter_ch3/ch3/task_2/modal/menu_list.dart';
import 'package:adv_flutter_ch3/ch3/task_2/modal/menu_modal.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../task_1/view/network_error/componects/no_internet.dart';
import 'componects/bottom_naviagtion.dart';
import 'componects/menu_item.dart';

class GoogleScreen extends StatelessWidget {
  const GoogleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (snapshot.data!.contains(ConnectivityResult.mobile) ||
              snapshot.data!.contains(ConnectivityResult.wifi)) {
            // RETURN MOBILE DATA
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SizedBox(
                          width: 70,
                          child:
                              Image.asset('asset/img/google image/download.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Search or type address',
                            filled: true,
                            fillColor: Colors.grey.shade300,
                            suffixIcon: Icon(Icons.mic),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    menuItem(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Artices for you',
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 100,
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.5,color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Musicpleer',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200, fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 220,
                                      child: Text(
                                        'Ariana Grande releases her new single: Thank You, Next',
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500, fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'asset/img/google image/music.jpg'),fit: BoxFit.cover)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            // RETURN NO INTERNET CONNECTION
            return no_internet_connection();
          }
        },
      ),
      bottomNavigationBar: bottomnaviagation(),
    );
  }


}

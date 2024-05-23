import 'package:adv_flutter_ch3/ch3/task_2/view/inappwebview/in_app_web_view_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

import '../../../../utils/global_variable.dart';
import '../../../task_1/view/network_error/componects/no_internet.dart';
import '../../provider/google_provider.dart';
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
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
                          controller: txtSearch,
                          decoration: InputDecoration(
                              hintText: 'Search or type address',
                              filled: true,
                              fillColor: Colors.grey.shade300,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const InAppWebViewScreen(),));
                                    Provider.of<GoogleProvider>(context, listen: false)
                                        .search(txtSearch.text);
                
                                    inAppWebViewController.loadUrl(
                                        urlRequest: URLRequest(url: WebUri('https://www.google.com/search?q=${Provider.of<GoogleProvider>(context,listen: false).searchText}&sca_esv=453cf80c9d34ac6b&sca_upv=1&rlz=1C1CHBD_enIN1099IN1101&sxsrf=ADLYWILO4ZE1r6P0Ha8wvoqAglAm7r1t5A%3A1716482160781&ei=cHBPZpCsL93V1e8PtZ-C2AM&ved=0ahUKEwiQpNOrmqSGAxXdavUHHbWPADsQ4dUDCBE&uact=5&oq=flutter&gs_lp=Egxnd3Mtd2l6LXNlcnAiB2ZsdXR0ZXIyChAjGIAEGCcYigUyChAjGIAEGCcYigUyBBAjGCcyChAAGIAEGEMYigUyCxAAGIAEGLEDGIMBMggQABiABBixAzILEAAYgAQYsQMYgwEyCxAAGIAEGLEDGIoFMgsQABiABBixAxiDATIIEAAYgAQYsQNIphZQ5wpYnRJwAngBkAEBmAGmAqABug6qAQYwLjEyLjG4AQPIAQD4AQGYAgSgAskCwgIKEAAYsAMY1gQYR8ICDRAAGIAEGLADGEMYigXCAgUQABiABJgDAIgGAZAGCpIHAzIuMqAHgnM&sclient=gws-wiz-serp')));
                                  },
                                  icon: const Icon(Icons.search)),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      menuItem(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Artices for you',
                              style: TextStyle(color: Colors.blue),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 100,
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(width: 0.5,color: Colors.grey),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
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
                                        image: const DecorationImage(
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

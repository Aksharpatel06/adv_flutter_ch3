import 'package:adv_flutter_ch3/ch3/task_2/provider/google_provider.dart';
import 'package:adv_flutter_ch3/ch3/task_2/view/googlescreen/componects/bottom_naviagtion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

import '../../../../utils/global_variable.dart';

class InAppWebViewScreen extends StatelessWidget {
  const InAppWebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                controller: txtSearch,
                decoration: InputDecoration(
                    hintText: 'Search or type address',
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    suffixIcon: IconButton(
                        onPressed: () {
                          Provider.of<GoogleProvider>(context, listen: false)
                              .search(txtSearch.text);

                          inAppWebViewController.loadUrl(
                              urlRequest: URLRequest(
                                  url: WebUri(
                                      'https://www.google.com/search?q=${Provider.of<GoogleProvider>(context, listen: false).searchText}&sca_esv=453cf80c9d34ac6b&sca_upv=1&rlz=1C1CHBD_enIN1099IN1101&sxsrf=ADLYWILO4ZE1r6P0Ha8wvoqAglAm7r1t5A%3A1716482160781&ei=cHBPZpCsL93V1e8PtZ-C2AM&ved=0ahUKEwiQpNOrmqSGAxXdavUHHbWPADsQ4dUDCBE&uact=5&oq=flutter&gs_lp=Egxnd3Mtd2l6LXNlcnAiB2ZsdXR0ZXIyChAjGIAEGCcYigUyChAjGIAEGCcYigUyBBAjGCcyChAAGIAEGEMYigUyCxAAGIAEGLEDGIMBMggQABiABBixAzILEAAYgAQYsQMYgwEyCxAAGIAEGLEDGIoFMgsQABiABBixAxiDATIIEAAYgAQYsQNIphZQ5wpYnRJwAngBkAEBmAGmAqABug6qAQYwLjEyLjG4AQPIAQD4AQGYAgSgAskCwgIKEAAYsAMY1gQYR8ICDRAAGIAEGLADGEMYigXCAgUQABiABJgDAIgGAZAGCpIHAzIuMqAHgnM&sclient=gws-wiz-serp')));
                        },
                        icon: Icon(Icons.search)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none)),
              ),
            )),
      ),
      body: Stack(
        children: [
          InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri(
                    'https://www.google.com/search?q=${Provider.of<GoogleProvider>(context, listen: false).searchText}&sca_esv=453cf80c9d34ac6b&sca_upv=1&rlz=1C1CHBD_enIN1099IN1101&sxsrf=ADLYWILO4ZE1r6P0Ha8wvoqAglAm7r1t5A%3A1716482160781&ei=cHBPZpCsL93V1e8PtZ-C2AM&ved=0ahUKEwiQpNOrmqSGAxXdavUHHbWPADsQ4dUDCBE&uact=5&oq=flutter&gs_lp=Egxnd3Mtd2l6LXNlcnAiB2ZsdXR0ZXIyChAjGIAEGCcYigUyChAjGIAEGCcYigUyBBAjGCcyChAAGIAEGEMYigUyCxAAGIAEGLEDGIMBMggQABiABBixAzILEAAYgAQYsQMYgwEyCxAAGIAEGLEDGIoFMgsQABiABBixAxiDATIIEAAYgAQYsQNIphZQ5wpYnRJwAngBkAEBmAGmAqABug6qAQYwLjEyLjG4AQPIAQD4AQGYAgSgAskCwgIKEAAYsAMY1gQYR8ICDRAAGIAEGLADGEMYigXCAgUQABiABJgDAIgGAZAGCpIHAzIuMqAHgnM&sclient=gws-wiz-serp'),
              ),
              onWebViewCreated: (controller) {
                inAppWebViewController = controller;
              },
              onProgressChanged: (controller, progresss) {
                Provider.of<GoogleProvider>(context, listen: false)
                    .onChangeProgress(progresss);
              }),
          (Provider.of<GoogleProvider>(context, listen: true).progress < 1)
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: LinearProgressIndicator(
                      value: Provider.of<GoogleProvider>(context, listen: true)
                          .progress))
              : Container(),
        ],
      ),
      bottomNavigationBar: bottomnaviagation(),
    );
  }
}

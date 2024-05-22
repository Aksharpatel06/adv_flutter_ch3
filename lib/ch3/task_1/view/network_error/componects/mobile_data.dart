import 'package:flutter/material.dart';

SafeArea mobile_data_connection() {
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
                'Connected to mobile',
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
}

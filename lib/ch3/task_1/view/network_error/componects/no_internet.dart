import 'package:flutter/material.dart';

SafeArea no_internet_connection() {
  return SafeArea(
    child: Center(
      child: SizedBox(
        height: 350,
        width: 270,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 180,child: Image.asset('asset/img/EmptyState.png')),
              const Text(
                'No internet connection',
                style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17),
              ),
              const SizedBox(height: 10,),
              const SizedBox(
                width: 280,
                child: Text(
                  'Please check your internet connection',
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

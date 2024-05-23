import 'package:flutter/material.dart';

class GoogleProvider extends ChangeNotifier{
  double progress = 0;
  String searchText = '';

  void onChangeProgress(int progress){
    this.progress = progress / 100;
    notifyListeners();
  }


  void search(String searchText){
    this.searchText = searchText;
    notifyListeners();
  }
}
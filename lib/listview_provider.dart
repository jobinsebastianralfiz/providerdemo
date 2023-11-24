import 'package:flutter/material.dart';

class ListViewProvider with ChangeNotifier{

  List _numbers=[0];

  List get numbers=>_numbers;


  void add(){

  _numbers.add(_numbers.last+1);
  notifyListeners();
  }



}
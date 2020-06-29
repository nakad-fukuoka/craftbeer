import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String craftbeerText = 'ビール';

  void cangecraftbeerText(){
    craftbeerText = 'クラフトビール美味い！！';
    notifyListeners();
  }
}
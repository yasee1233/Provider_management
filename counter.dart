
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
var counts =0;
increment(){
  counts++;
  notifyListeners();
}
decrement(){
  if(counts>0){
  counts--;

  }
  notifyListeners();
}
}

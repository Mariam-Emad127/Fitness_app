import 'package:flutter/widgets.dart';

class Incrennt with ChangeNotifier{
int t=0;
void increment(){
t++;
print(t);
notifyListeners();
}


}
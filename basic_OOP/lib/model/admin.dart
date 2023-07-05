

import 'package:basic_dart/model/game.dart';

class Admin with Game{
    int _ad = 0;
    Admin(this._ad);
    int get ad => _ad;

    set ad(int value) {
    _ad = value;
  }

  void play(){
      inGame();
     // print('$ad');
    }
  @override
  String toString() {
    // TODO: implement toString
    return '$ad';
  }
}
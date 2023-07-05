
import 'package:basic_dart/model/admin.dart';
import 'package:basic_dart/model/city.dart';
import 'package:basic_dart/model/people.dart';
import 'package:basic_dart/model/person.dart';

class User extends Person implements People,City{
  int _id = 0;
  String _name= '';
  String location = '';

  User(this._id, this._name, this.location, super.age, super.address);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$_id -  $_name - $location - $age - $address';
  }

  @override
  void function() {
    print("Function");
  }

  @override
  void function1() {
    print('Functions2');
  }


  @override
  void showCity() {
    // TODO: implement showCity
    print('City');}



}
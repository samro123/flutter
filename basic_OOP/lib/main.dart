
import 'package:basic_dart/model/admin.dart';
import 'package:basic_dart/model/user.dart';

void main() {
  User user = User(1, 'Sam','Van Thach', 18 , 'Quang Nam');
  Admin admin = Admin(1);
  user.id = 2;
  user.address = 'Dang Nang';
  user.location = 'Tam Hiep';
  user.function();
  user.function1();
  user.showCity();
  print(user.toString());

  admin.play();
  admin.ad = 3;
  print(admin.toString());
}
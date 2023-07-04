
void main() {

  String name = 'Sam';
  String address = 'QuangNam';
  num age = 20;
  num weight = 60;
  int identity = 999999999;
  double Height = 1.7;
  bool isSex = false;


  print('Name: ' + name);
  print('Address:'+ address);
  print('Age is ${age} years old');
  print('Weight is ${weight} kg');
  print('Identity card $identity');
  print('Height is $Height');
  print('Boy is ${isSex}');


  const double pi = 3.14;
  const double circle = 2 * pi;
  print('circle is ${circle}');

  var foo = const [];
  foo = [1, 2, 3, 4, 5];
  print(foo);

  const foo2 = [1,2,3];
  print(foo2);

  final foo3 =  [1, 2, 3, 4, 5];
  foo3[0] = 3;
  print(foo3);


  String? nullAbleString;
  String nonNullableString = 'Hello, World!';
  String nonNullableString1 = 'Sam';
  String fullString = nonNullableString + ' ' + nonNullableString1;
  String sub = nonNullableString.substring(6, 12);
  String lower = fullString.toLowerCase();
  String upper = fullString.toUpperCase();
  bool containers = fullString.contains('Hello');
  String replace = fullString.replaceAll('Hello', 'Hi');
  late String lateString;
  print(nullAbleString);
  print('Example of Null safety');
  print(fullString);
  print(sub);
  print(lower);
  print(upper);
  print(containers);
  print(replace);



  List <int?> lists = [1,2, null, 3];
  lists.forEach((element) {
    print(element);
  });
  print('Example 1: ${lists}');

  List<String> listName = ['Ro', 'Sam', 'Tu', 'Tuan'];

  listName.forEach((element) {
    print(element);
  });

  String stringName = listName.join(" ");
  print(stringName);




  void printAddress(String? address) {
    print('example 2:');
    print(address);
  }
  printAddress('Da Nang');

  void printAddress1() => print("Da nang");


  print('Late keyword');
  late String lateString1;
  lateString1 = 'Hello, World!';
  print(lateString1);


}
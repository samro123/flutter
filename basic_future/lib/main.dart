
Future <String> order() async{
  var number = [1,2,3,4];
  var myOrder = await prepara();
  var total = await inTotal(number);
  return 'Thank you $myOrder total = $total' ;
}

Future<String> prepara() {
  var result = Future.delayed(const Duration(seconds: 5) , () => 'Sam');
  return result;
}

Future<int> inTotal(List<int> number) {
  var result = Future.delayed(const Duration(seconds: 5) , (){
      int total = 0 ;
      for(int numbers in number){
        total += numbers;
      }
      return total;
  });
  return result;
}


void main() {
    print('Start order ');
    var ordered = order();

    ordered.then((value) => print(value));
}
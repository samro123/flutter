import 'package:flutter/material.dart';
//Main
void main() {
   runApp(MaterialApp(
     home: SafeArea(
         child: Scaffold(
            //appBar: headerBar(),
             body:
              MyWidget(),

     )
     ),
     debugShowCheckedModeBanner: false,
   ));
}


class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return  Container(
       margin: const EdgeInsets.all(8.0),
       child: TextButton(
           onPressed: null,
           style: TextButton.styleFrom(
             disabledForegroundColor: Colors.white,
             disabledBackgroundColor: Colors.pinkAccent,
             //minimumSize: const Size(180, 20) // kich thuoc button
             padding: const EdgeInsets.all(50),
            // primary: Colors.blue,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(18)
             ),
             elevation: 10, //độ rộng của bóng
             shadowColor: Colors.red.withOpacity(0.5),// opacity độ mờ của bóng
             side: const BorderSide(width: 5, color: Colors.orange),//border
             
           ),
             child: const Text('button', style: TextStyle(fontSize: 30,),), //

       ),
     );


  }


}





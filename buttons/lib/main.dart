import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frist_app/component/button/outline_button.dart';
//Main
void main() {
   runApp(MaterialApp(
     home: SafeArea(
         child: Scaffold(
            //appBar: headerBar(),
             body: //Button(),
              MyWidget(),

     )
     ),
     debugShowCheckedModeBanner: false,
   ));
}

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Container(
       margin: const EdgeInsets.all(10),
       child: Column(
         children: [
           Expanded(
               child: Container(
                color: Colors.orange,
                 child: Column(
                   children: [
                     Expanded(
                       flex: 1,
                         child: Container(
                            color: Colors.pink,
                            child: const Text('Button',
                              style: TextStyle(
                                     fontSize: 20,
                                     color: Colors.white,
                                     ),

                            ),
                     )),
                     Expanded(
                       flex: 2,
                         child: Container(
                            color: Colors.red,
                           child: Row(
                             mainAxisSize: MainAxisSize.max,
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               ElevatedButton(onPressed: (){},
                                   child:
                                   const Text('Button',
                                     style: TextStyle(fontSize: 20),)),
                               ElevatedButton(onPressed: (){},
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.pinkAccent,
                                     foregroundColor: Colors.white,
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10)
                                     ),
                                     elevation: 20,
                                     shadowColor: Colors.white.withOpacity(0.5),
                                     side: const BorderSide(color: Colors.white, width: 3),
                                   ),
                                   child:
                                   const Text('Button1',
                                     style: TextStyle(fontSize: 20),),

                               ),
                               ElevatedButton.icon(onPressed: (){},
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.amber,
                                   ),
                                   icon: const Icon(CupertinoIcons.info_circle_fill),
                                   label:
                                   const Text('Button2',
                                    // icon: Icon(Icons.info),
                                     style: TextStyle(fontSize: 20),)),
                             ],
                           ),
                     )),
                   ],
                 ),
               ),
           ),
           Expanded(
             child: Container(
               color: Colors.green,
               child: Column(
                 children: [
                   Expanded(
                      flex: 1,
                       child: Container(
                         color: Colors.blueAccent,
                         child: Text('Button'),
                       )),
                   Expanded(
                      flex: 2,
                       child: Container(
                         color: Colors.teal,
                         child: Row(
                           mainAxisSize: MainAxisSize.max,
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             OutlinedButton(onPressed: (){},
                                 style: OutlinedButton.styleFrom(
                                   foregroundColor: Colors.deepPurple,
                                 ),
                                 child: const Text('Button',
                                   style: TextStyle(fontSize: 20),)),
                             OutlinedButton(onPressed: (){},
                                 child: const Text('Button1',
                                   style: TextStyle(fontSize: 20),)),
                             Outline_Button(
                               text: 'sam',
                               onPressed: () { print('sam');},
                               color: Colors.white,
                               colorFore: Colors.red,
                               widthBtn: 20,
                               heightBtn: 30,
                             ),
                           ],
                         ),
                       )),
                 ],
               ),
             ),
           ),
           Expanded(
             child: Container(
               color: Colors.green,
               child: Column(
                 children: [
                   Expanded(
                       flex: 1,
                       child: Container(
                         color: Colors.black,
                         child: const Text('Button',
                                style: TextStyle(fontSize: 20,
                                    color: Colors.white),),
                       )),
                   Expanded(
                       flex: 2,
                       child: Container(
                         color: Colors.teal,
                         child: Row(
                           mainAxisSize: MainAxisSize.max,
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             TextButton(onPressed: (){},
                                 style: TextButton.styleFrom(
                                   foregroundColor: Colors.amberAccent
                                 ),
                                 child: const Text('Button',
                                   style: TextStyle(fontSize: 20),)),
                             TextButton(onPressed: (){},
                                 child: const Text('Button1',
                                   style: TextStyle(fontSize: 20),)),
                             TextButton(onPressed: (){},
                                 child: const Text('Button2',
                                   style: TextStyle(fontSize: 20),)),
                           ],
                         ),
                       )),
                 ],
               ),
             ),
           ),
         ],
       ),
     );
  }
}







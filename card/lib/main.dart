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

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          color: Colors.greenAccent,
                          child: Stack(
                            children: [
                              Card(
                                margin: EdgeInsets.all(10),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          child: Image.network('https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                              fit: BoxFit.fitWidth
                                          ),
                                        ),
                                      )
                                    ),
                                    Expanded(
                                       flex: 1,
                                        child: Container(
                                          child: Text('Boy'),
                                         
                                        ))
                                  ],
                                ),
                              ),

                              Positioned(
                                //alignment: Alignment.topRight,
                                top: 5,
                                right: 10,
                                child: Container(
                                  width: 80,
                                  height: 80,

                                  decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                    shape: BoxShape.circle
                                  ),
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                        ),
                                        //backgroundColor: Colors.pinkAccent,
                                        padding: EdgeInsets.all(10),
                                      ),
                                      onPressed: (){},
                                      child: Text('Sam')),
                                ),
                              ),
                              Align(
                                 alignment: Alignment.topRight,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                    decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                    ),

                                ),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          color: Colors.red,
                        ))
                  ],
                ),
            )
        ),
        Expanded(child: Container(
          color: Colors.yellow,
        )),

      ],
    );
  }

}

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

  var arrName = ['sam', 'ro', 'tu', 'tuan', 'huy', 'join', 'lan', 'name'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(itemBuilder: (context, index) {
        return Container(
          height: 80,
         // padding: EdgeInsets.only(left: 10, top: 10),
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                     height: 50,
                     width: 50,
                     //color: Colors.cyan,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        shape: BoxShape.circle
                    ),
                    child: Text(arrName[index],
                      style: TextStyle(fontSize: 20,),)),
                Text(arrName[index], style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
        );
      },
        itemCount: arrName.length,
         //itemExtent: 100,
        //scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return
            Divider(
              //height: 100,
              thickness: 4 , // độ dày của đường phân cách
              indent: 2,// đương phân cách thụt vào
              color: Colors.green,
            );
        },

      ),
    );
  }

}

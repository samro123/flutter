import 'package:flutter/material.dart';
//Main
void main() {
   runApp(MaterialApp(
     home: SafeArea(
         child: Scaffold(
            //appBar: headerBar(),
             body: MyWidget()
     )
     ),
     debugShowCheckedModeBanner: false,
   ));
}

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
             TextSpan(text: 'Hello ',
                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
             TextSpan(text: 'Sam ', style: TextStyle(color: Colors.red)),
             TextSpan(text: 'world ', ),
             TextSpan(text: 'free ',
                 style: TextStyle(color: Colors.pinkAccent, fontSize: 15,)),
             TextSpan(text: 'at no cost ',
                 style: TextStyle(color: Colors.orange)),
             TextSpan(text: 'no charge ',
                 style: TextStyle(color: Colors.blue,
                          shadows: [Shadow(
                            blurRadius: 1,
                            color: Colors.lightBlueAccent,
                            offset: Offset(2, 2)
                          )]
                        )),
             TextSpan(text: 'link',
                 style:
                 TextStyle(color: Colors.red, fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline, fontSize: 20,
                            fontStyle: FontStyle.italic,

                        ))
           ]
          )
      ),
    );
  }


}





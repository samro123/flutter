import 'package:flutter/material.dart';
import 'package:login/component/button/outline_button.dart';

void main() {
  runApp( MaterialApp(
    home: SafeArea(
        child: Scaffold(
          body:  MyApp()
        )
    ),

    debugShowCheckedModeBanner: false,
  )
  );
}

class MyApp extends StatelessWidget{

  var emailText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
           const SizedBox(
             height: 80,
             child: Text('Login',
                     style: TextStyle(fontSize: 30, color: Colors.pinkAccent),),
           ),
           Row(
            children: [
              const SizedBox(
                width: 80,
                child: Text('UserName'),
              ),

              SizedBox(
                width: 220,
                height: 60,
                child: TextField(
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: 'UserName',
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 1
                      )
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1
                      )
                    ),
                    disabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1
                        )
                    ),

                    suffixIcon: IconButton(
                        onPressed: (){},
                        icon:const Icon(Icons.email),color: Colors.blue ,),

                  ),
                ),
              )

            ],
          ),

          const SizedBox(height: 20,),
          Row(
             children: [
                const SizedBox(
                 width: 80,
                  child: Text('Passwold'),
                      ),
               SizedBox(
                 width: 220,
                 height: 60,
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: 'PassWold',
                     focusedBorder: const OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                         borderSide: BorderSide(
                             color: Colors.pinkAccent,
                             width: 1
                         )
                     ),
                     enabledBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(20)),
                       borderSide: BorderSide(
                         color: Colors.blueAccent,
                         width: 1
                       )
                     ),
                     suffixIcon: IconButton(
                         onPressed: (){},
                         icon: const Icon(Icons.remove_red_eye),
                         color: Colors.blueAccent,)

                   ),
                 ),
               )
               ],
          ),

          const SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child:
                OutLine_Button(text: 'Login', onPress: (){
                  String uEmail = emailText.text.toString();
                  print('$uEmail');

                },
                  color: Colors.white,
                  colorText: Colors.blueAccent,
                ),

              ),

              const SizedBox(width: 10,),
              Expanded(
                  child:
                  OutLine_Button(
                    text: 'Register',
                    onPress: ()=> print('sam'),
                    color: Colors.greenAccent,
                    colorText: Colors.white,
                  )
              )

            ],
          )
        ],
      ),
    );
  }

}


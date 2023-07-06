import 'package:flutter/material.dart';
//Main
void main() {
   runApp(MaterialApp(
     home: SafeArea(
         child: Scaffold(
            //appBar: headerBar(),
             body: Center(
                 child: MyWidget(false),
             )
     )
     ),
     debugShowCheckedModeBanner: false,
   ));
}

class MyWidget extends StatefulWidget{
  final bool loading ;
  MyWidget(this.loading);

  @override
  State<StatefulWidget> createState() {
    return MyWidgetState();
  }
}
// Build giao diện
class MyWidgetState extends State<MyWidget>{

  late bool _localLoading;
  @override
  void initState() {
    _localLoading = widget.loading;
  }

  @override
  Widget build(BuildContext context) {
    return _localLoading ? const CircularProgressIndicator() :  FloatingActionButton(onPressed: onClickButton);
  }

  void onClickButton(){
    setState(() {
      _localLoading = true;
    });
  }
}





import 'package:flutter/material.dart';
//Main
void main() {
   runApp(MaterialApp(
     theme: ThemeData(
       fontFamily: 'font'
     ), // fonts cho toàn bộ project
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
    return const Text('Flutter là một khung nguồn mở do Google phát triển'
        ' và hỗ trợ. Các nhà phát triển frontend và fullstack sử dụng Flutter'
        ' để xây dựng giao diện người dùng (UI) của ứng dụng cho nhiều nền tảng'
        ' chỉ với một nền mã duy nhấ',
        textDirection: TextDirection.ltr,// hướng cửa chữ
        textAlign: TextAlign.left ,// canh lề cho chữ
        maxLines: 3,//3 dòng
        overflow: TextOverflow.ellipsis,// ...
        textScaleFactor: 1.5, // làm cho chữ to lên
        style: TextStyle(
          color: Colors.green, // màu chữ
          fontSize: 15,//Kich thuoc của chữ
          fontWeight: FontWeight.w400,// độ đạm nhạt của chữ
          fontStyle: FontStyle.italic,// style chữ in nguyên
          fontFamily: 'Times New Roman',
          //wordSpacing: 20, //khoảng cách giữa các chữ
          //letterSpacing: 10, // Khoảng cách giữa các từ
          //decoration: TextDecoration.lineThrough,// kiểu gạch giữa
          shadows: [Shadow(
            blurRadius: 10.0,// ĐỘ mờ của bóng
            color: Colors.teal,// Màu của bóng
            offset: Offset(5, 5),// góc nghiên của bóng

          )]

        ),
    );
  }

}





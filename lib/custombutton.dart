import 'package:flutter/material.dart';

class Custom_button extends StatelessWidget {
   Custom_button({Key? key,@required this.buttext,@required this.callback}) : super(key: key);
String? buttext;
Function ? callback;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        callback!(buttext);
      },
      child: Container(
          width: 400,
          height: 80,
          margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Colors.blue,
      boxShadow: const [BoxShadow(color: Colors.black,
      spreadRadius: 1,
      blurRadius: 5),
      ]
      ),
        child: Text(buttext!,style: TextStyle(fontSize: 30),),
      ),
    );
  }
}

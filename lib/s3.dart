import 'package:flutter/material.dart';
import 'package:qqqqqq/s4.dart';
import 'package:qqqqqq/const.dart';
import 'custombutton.dart';

class thered_screen extends StatefulWidget {
  int? s2;
  int? c2;
   thered_screen({Key? key,required this.s2,required this.c2}) : super(key: key);

  @override
  State<thered_screen> createState() => _thered_screenState();
}

class _thered_screenState extends State<thered_screen> {
  void onclick(String buttext) {
    if(buttext=='خفرع'){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => forth_screen(s3:widget.s2,c3:widget.c2 ,)));
        widget.s2=(widget.s2!+10);
        widget.c2= (widget.c2!+1);
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => forth_screen(s3:widget.s2,c3:widget.c2)));
      widget.c2= (widget.c2!+1);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: constans.Bar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              width: 500,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${widget.s2}",style: TextStyle(fontSize: 30),),
                      Text("${widget.c2}/10",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  Text("ما هو اصغر اهرامات الجيزة",style: TextStyle(fontSize: 30),)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 500,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Custom_button(buttext: "خفرع",callback:onclick),
                  Custom_button(buttext: "منكرع",callback:onclick),
                  Custom_button(buttext: "خوفو",callback:onclick),
                  Custom_button(buttext: "سقارة",callback:onclick),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:qqqqqq/s5.dart';
import 'package:qqqqqq/const.dart';
import 'custombutton.dart';

class forth_screen extends StatefulWidget {
  int? s3;
  int? c3;
   forth_screen({Key? key,required this.s3, required this.c3}) : super(key: key);

  @override
  State<forth_screen> createState() => _forth_screenState();
}

class _forth_screenState extends State<forth_screen> {
  void onclick(String buttext) {
    if(buttext=='سمكةابوشراع'){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => fifth_screen(s4: widget.s3,c4: widget.c3,)));
        widget.s3=(widget.s3!+10);
        widget.c3= (widget.c3!+1);
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => fifth_screen(s4:widget.s3 ,c4: widget.c3,)));
      widget.c3= (widget.c3!+1);
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
                      Text("${widget.s3}",style: TextStyle(fontSize: 30),),
                      Text("${widget.c3}/10",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  Text("الحيوان المائي الاسرع في العالم",style: TextStyle(fontSize: 30),)
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
                  Custom_button(buttext: "سمكةابوشراع",callback:onclick),
                  Custom_button(buttext: "الحوت",callback:onclick),
                  Custom_button(buttext: "القرش",callback:onclick),
                  Custom_button(buttext: "الدولفين",callback:onclick),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

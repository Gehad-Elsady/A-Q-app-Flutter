import 'package:flutter/material.dart';
import 'package:qqqqqq/s10.dart';
import 'package:qqqqqq/const.dart';
import 'custombutton.dart';

class nine_screen extends StatefulWidget {
  int? s8;
  int? c8;
   nine_screen({Key? key,required this.s8, required this.c8}) : super(key: key);

  @override
  State<nine_screen> createState() => _nine_screenState();
}

class _nine_screenState extends State<nine_screen> {
  void onclick(String buttext) {
    if(buttext=='كوكب المشترى'){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>  ten_screen(s9: widget.s8,c9: widget.c8,)));
        widget.s8=(widget.s8!+10);
        widget.c8= (widget.c8!+1);
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => ten_screen(s9: widget.s8,c9: widget.c8,)));
      widget.c8= (widget.c8!+1);
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
                      Text("${widget.s8}",style: TextStyle(fontSize: 30),),
                      Text("${widget.c8}/10",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  Text("اكثر الكواكب خطورة؟",style: TextStyle(fontSize: 30),)
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
                  Custom_button(buttext: "كوكب المشترى",callback:onclick),
                  Custom_button(buttext: "كوكب وزحل",callback:onclick),
                  Custom_button(buttext: "كوكب الارض",callback:onclick),
                  Custom_button(buttext: "كوكب عطارد",callback:onclick),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

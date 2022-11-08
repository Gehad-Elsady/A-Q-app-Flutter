import 'package:flutter/material.dart';
import 'package:qqqqqq/s8.dart';
import 'package:qqqqqq/const.dart';
import 'custombutton.dart';

class seven_screen extends StatefulWidget {
  int? s6;
  int? c6;
   seven_screen({Key? key,required this.s6, required this.c6}) : super(key: key);

  @override
  State<seven_screen> createState() => _seven_screenState();
}

class _seven_screenState extends State<seven_screen> {
  void onclick(String buttext) {
    if(buttext=='الحوت الازرق'){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>  eight_screen(s7:widget.s6 ,c7: widget.c6,)));
        widget.s6=(widget.s6!+10);
        widget.c6= (widget.c6!+1);
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => eight_screen(s7:widget.s6 ,c7: widget.c6,)));
      widget.c6= (widget.c6!+1);
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
                      Text("${widget.s6}",style: TextStyle(fontSize: 30),),
                      Text("${widget.c6}/10",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  Text("أثقل الحيوانات على كوكب الأرض؟",style: TextStyle(fontSize: 30),)
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
                  Custom_button(buttext: "الحوت الابيض",callback:onclick),
                  Custom_button(buttext: "الحوت القاتل",callback:onclick),
                  Custom_button(buttext: "الحوت الازرق",callback:onclick),
                  Custom_button(buttext: "القرش",callback:onclick),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

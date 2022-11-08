import 'package:flutter/material.dart';
import 'package:qqqqqq/s7.dart';
import 'package:qqqqqq/const.dart';
import 'custombutton.dart';

class six_screen extends StatefulWidget {
  int? s5;
  int? c5;
   six_screen({Key? key,required this.s5, required this.c5}) : super(key: key);

  @override
  State<six_screen> createState() => _six_screenState();
}

class _six_screenState extends State<six_screen> {
  void onclick(String buttext) {
    if(buttext=='ثلاثة'){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>  seven_screen(s6:widget.s5 ,c6: widget.c5,)));
        widget.s5=(widget.s5!+10);
        widget.c5= (widget.c5!+1);
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => seven_screen(s6:widget.s5 ,c6: widget.c5,)));
      widget.c5= (widget.c5!+1);
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
                      Text("${widget.s5}",style: TextStyle(fontSize: 30),),
                      Text("${widget.c5}/10",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  Text("عدد القلوب لدى حيوان الاخطبوط؟",style: TextStyle(fontSize: 30),)
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
                  Custom_button(buttext: "اربعة",callback:onclick),
                  Custom_button(buttext: "خمسة",callback:onclick),
                  Custom_button(buttext: "اثنين",callback:onclick),
                  Custom_button(buttext: "ثلاثة",callback:onclick),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

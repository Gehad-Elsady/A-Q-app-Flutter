import 'package:flutter/material.dart';
import 'package:qqqqqq/s3.dart';
import 'package:qqqqqq/const.dart';
import 'custombutton.dart';

class Second_screen extends StatefulWidget {
  int? s1;
  int? c1;
   Second_screen({Key? key,required this.s1,required this.c1}) : super(key: key);

  @override
  State<Second_screen> createState() => _Second_screenState();
}

class _Second_screenState extends State<Second_screen> {
  void onclick(String buttext) {
    if(buttext=='خوفو'){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => thered_screen(s2:widget.s1, c2: widget.c1)));
        widget.s1= (widget.s1!+10);
        widget.c1= (widget.c1!+1);
      });
  }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => thered_screen(s2:widget.s1, c2: widget.c1)));
      widget.c1= (widget.c1!+1);
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
                      Text("${widget.s1}",style: constans.style1,),
                      Text("${widget.c1}/10",style: constans.style1,),
                    ],
                  ),
                  Text("ما هو اكبر اهرامات الجيزة",style: constans.style1,)
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

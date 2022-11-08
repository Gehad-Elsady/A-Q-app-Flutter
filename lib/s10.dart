import 'package:flutter/material.dart';
import 'package:qqqqqq/finalpage.dart';
import 'package:qqqqqq/const.dart';
import 'custombutton.dart';

class ten_screen extends StatefulWidget {
  int? s9;
  int? c9;
   ten_screen({Key? key,required this.s9, required this.c9}) : super(key: key);

  @override
  State<ten_screen> createState() => _ten_screenState();
}

class _ten_screenState extends State<ten_screen> {

  /*void onclick(String buttext) {
    if(buttext=='5 لاعبين'){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>  Final_page(s10: widget.s9,)));
        widget.s9=(widget.s9!+10);
        widget.c9= (widget.c9!+1);
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => Final_page(s10: widget.s9,)));
      widget.c9= (widget.c9!+1);
    }
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: constans.Bar,
      body: c1(que: "من كم لاعب يتكون فريق كره السله ؟", c: widget.c9, s: widget.s9, ans1: "8 لاعبين", ans2: "5 لاعبين", ans3: "6 لاعبين", ans4: "7 لاعبين",ans: "5 لاعبين",)
      /*Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
*//*
          c1(que: "من كم لاعب يتكون فريق كره السله ؟", c: widget.c9, s: widget.s9)
*//*
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
                      Text("${widget.s9}",style: TextStyle(fontSize: 30),),
                      Text("${widget.c9}/10",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  Text("من كم لاعب يتكون فريق كره السله ؟",style: TextStyle(fontSize: 30),maxLines: 2,)
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
                  Custom_button(buttext: "8 لاعبين",callback:onclick),
                  Custom_button(buttext: "5 لاعبين",callback:onclick),
                  Custom_button(buttext: "6 لاعبين",callback:onclick),
                  Custom_button(buttext: "7 لاعبين",callback:onclick),

                ],
              ),
            ),
          ),
        ],
      ),*/
    );
  }
}

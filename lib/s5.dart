import 'package:flutter/material.dart';
import 'package:qqqqqq/s6.dart';
import 'package:qqqqqq/const.dart';
import 'custombutton.dart';

class fifth_screen extends StatefulWidget {
  int? s4;
  int? c4;
   fifth_screen({Key? key,required this.s4, required this.c4}) : super(key: key);

  @override
  State<fifth_screen> createState() => _fifth_screenState();
}

class _fifth_screenState extends State<fifth_screen> {
  void onclick(String buttext) {
    if(buttext=='اربعين'){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>  six_screen(s5: widget.s4,c5: widget.c4,)));
        widget.s4=(widget.s4!+10);
        widget.c4= (widget.c4!+1);
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => six_screen(s5: widget.s4,c5: widget.c4,)));
      widget.c4= (widget.c4!+1);
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
                      Text("${widget.s4}",style: TextStyle(fontSize: 30),),
                      Text("${widget.c4}/10",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  Text("ما هو عدد الاسنان لدى القط؟",style: TextStyle(fontSize: 30),)
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
                  Custom_button(buttext: "ثلاثين",callback:onclick),
                  Custom_button(buttext: "اربعين",callback:onclick),
                  Custom_button(buttext: "خمسين",callback:onclick),
                  Custom_button(buttext: "خمسةوثلاثين",callback:onclick),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

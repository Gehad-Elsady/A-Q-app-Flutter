
import 'package:flutter/material.dart';
import 'package:qqqqqq/finalpage.dart';
import 'package:qqqqqq/s1.dart';
import 'package:qqqqqq/s2.dart';
import 'package:qqqqqq/s3.dart';

import 'custombutton.dart';

class constans{
    static AppBar Bar= AppBar(title: Text("Q&A",style: TextStyle(fontSize: 20),),centerTitle: true,backgroundColor: Colors.red,automaticallyImplyLeading: false,);
    static TextStyle style1= TextStyle(fontSize: 30);
    /*static onclick(butt,String ans, s, c,context,next) {
        if(butt==ans){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => next));
                s=(s!+10);
                c= (c!+1);
        }else{
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => next));
            c= (c!+1);
        }*/
    //}

}
class c1 extends StatefulWidget {
  int? s;
  int? c;
   c1({Key? key,@required this.que,@required this.c,@required this.s,@required this.ans1,@required this.ans2,@required this.ans3,@required this.ans4,@required this.ans,}) : super(key: key);
  String? que;

String? ans1;
   String? ans2;
   String? ans3;
   String? ans4;
   String? ans;
   @override
  State<c1> createState() => _c1State();
}

class _c1State extends State<c1> {

   onclick(String buttext, {var s1}) {
    if(buttext==widget.ans){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => Final_page(s10: widget.s,) ));
        widget.s=(widget.s!+10);
        widget.c= (widget.c!+1);
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => Final_page(s10: widget.s,)));
      widget.c= (widget.c!+1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Text("${widget.s}",style: TextStyle(fontSize: 30),),
                    Text("${widget.c}/10",style: TextStyle(fontSize: 30),),
                  ],
                ),
                Text("${widget.que}",style: TextStyle(fontSize: 30),maxLines: 2,)
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
                Custom_button(buttext: "${widget.ans1}",callback:onclick),
                Custom_button(buttext: "${widget.ans2}",callback:onclick),
                Custom_button(buttext: "${widget.ans3}",callback:onclick),
                Custom_button(buttext: "${widget.ans4}",callback:onclick),

              ],
            ),
          ),
        ),
      ],
    );
  }
}

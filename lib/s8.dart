import 'package:flutter/material.dart';
import 'package:qqqqqq/s9.dart';
import 'package:qqqqqq/const.dart';
import 'custombutton.dart';

class eight_screen extends StatefulWidget {
  int? s7;
  int? c7;
   eight_screen({Key? key,required this.s7, required this.c7}) : super(key: key);

  @override
  State<eight_screen> createState() => _eight_screenState();
}

class _eight_screenState extends State<eight_screen> {
  void onclick(String buttext) {
    if(buttext=='جامع عمرو بن العاص'){
      setState(() {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) =>  nine_screen(s8:widget.s7 ,c8:widget.c7 ,)));
        widget.s7=(widget.s7!+10);
        widget.c7= (widget.c7!+1);
      });
    }else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => nine_screen(s8:widget.s7 ,c8:widget.c7 ,)));
      widget.c7= (widget.c7!+1);
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
                      Text("${widget.s7}",style: TextStyle(fontSize: 30),),
                      Text("${widget.c7}/10",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  Text("اول جامع تم بناءه في مصر؟",style: TextStyle(fontSize: 30),)
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
                  Custom_button(buttext: "جامع الزهر",callback:onclick),
                  Custom_button(buttext: "جامع الحسين",callback:onclick),
                  Custom_button(buttext: "جامع عمرو بن العاص",callback:onclick),
                  Custom_button(buttext: "جامع السيدة زينب",callback:onclick),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

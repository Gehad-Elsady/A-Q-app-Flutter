import 'package:flutter/material.dart';
import 'package:qqqqqq/const.dart';
import 'package:qqqqqq/custombutton.dart';
import 'package:qqqqqq/s2.dart';

class Frist_screen extends StatefulWidget {
  const Frist_screen({Key? key}) : super(key: key);

  @override
  State<Frist_screen> createState() => _Frist_screenState();
}

class _Frist_screenState extends State<Frist_screen> {
  int score = 0;
  int cont = 1;
  void onclick(String buttext) {
    if (buttext == 'مصر') {
      setState(() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Second_screen(
                      s1: score,
                      c1: cont,
                    ),
            ),
        );
        score = score + 10;
        cont = cont + 1;
      });
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Second_screen(
                    s1: score,
                    c1: cont,
                  )));
      cont = cont + 1;
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
                      Text(
                        score.toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        "$cont/10",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  Text(
                    "اين تقع الاهرامات",
                    style: TextStyle(fontSize: 30),
                  )
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
                  Custom_button(
                    buttext: "مصر",
                    callback: onclick,
                  ),
                  Custom_button(buttext: "السعودية", callback: onclick),
                  Custom_button(buttext: "المفرب", callback: onclick),
                  Custom_button(buttext: "العراق", callback: onclick),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

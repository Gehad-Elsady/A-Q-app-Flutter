import 'package:flutter/material.dart';
import 'package:qqqqqq/custombutton.dart';
import 'package:qqqqqq/s1.dart';

class Final_page extends StatefulWidget {
  int? s10;
  int? c10;

  Final_page({Key? key,required this.s10}) : super(key: key);

  @override
  State<Final_page> createState() => _Final_pageState();
}

class _Final_pageState extends State<Final_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Q&A",style: TextStyle(fontSize: 20),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
      ),
      body:Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Congratulation",style: TextStyle(fontSize: 50,color: Colors.yellow),),
            Text("${widget.s10}",style: TextStyle(fontSize: 50,color: Colors.yellow),),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Frist_screen()));
            }, child: Text("Try Agine",style: TextStyle(fontSize: 50,)))
          ],
        ),
      ),
    );
  }
}

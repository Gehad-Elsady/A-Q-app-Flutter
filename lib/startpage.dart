import 'package:flutter/material.dart';
import 'package:qqqqqq/s1.dart';

class Start_page extends StatefulWidget {
  const Start_page({Key? key}) : super(key: key);

  @override
  State<Start_page> createState() => _Start_pageState();
}

class _Start_pageState extends State<Start_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image:NetworkImage('https://1x.com/assets/img/pro08.jpg'),fit: BoxFit.fill,)),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Welcome",style: TextStyle(fontSize: 50,color: Colors.yellow),),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Frist_screen()));
          }, child: Text("Start",style: TextStyle(fontSize: 50,color: Colors.black)),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red),))
        ],
      ),
    );
  }
}

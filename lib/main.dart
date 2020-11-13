

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController getFirstnum=TextEditingController();
  TextEditingController getSecondnum=TextEditingController();
  int result=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator App"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: getFirstnum,
                  decoration: InputDecoration(
                    hintText: "Enter the first number",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getSecondnum,
                  decoration: InputDecoration(
                    hintText: "Enter the second number",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  int getnum1=int.parse(getFirstnum.text);
                  int getnum2=int.parse(getSecondnum.text);

                  setState(() {
                     result=getnum1+getnum2;

                  });
                  print(result);

                },
                  color: Colors.amber,
                  child: Text("ADD"),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  int getnum1=int.parse(getFirstnum.text);
                  int getnum2=int.parse(getSecondnum.text);
                  setState(() {
                     result=getnum1-getnum2;
                  });
                  print(result);

                },
                  color: Colors.amber,
                  child: Text("SUB"),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  int getnum1=int.parse(getFirstnum.text);
                  int getnum2=int.parse(getSecondnum.text);
                  setState(() {
                     result=getnum1*getnum2;
                  });
                  print(result);

                },
                  color: Colors.amber,
                  child: Text("MUL"),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  int getnum1=int.parse(getFirstnum.text);
                  int getnum2=int.parse(getSecondnum.text);
                  setState(() {
                    result=getnum1~/getnum2;
                  });
                   print(result);

                },
                  color: Colors.amber,
                  child: Text("DIV"),
                ),
                Text(result.toString(),
                    style:TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




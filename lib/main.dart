

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  TextEditingController getFirstnumber=TextEditingController();
  TextEditingController getSecondnumber=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator App"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: getFirstnumber,
                  decoration: InputDecoration(
                    hintText: "Enter the first number",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getSecondnumber,
                  decoration: InputDecoration(
                    hintText: "Enter the second number",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  int getnum1=int.parse(getFirstnumber.text);
                  int getnum2=int.parse(getSecondnumber.text);
                  int result=getnum1+getnum2;
                  print(result);
                },
                  color: Colors.deepOrange,
                  child: Text("ADD"),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  int getnum1=int.parse(getFirstnumber.text);
                  int getnum2=int.parse(getSecondnumber.text);
                  int result=getnum1-getnum2;
                  print(result);
                },
                  color: Colors.deepOrange,
                  child: Text("SUB"),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  int getnum1=int.parse(getFirstnumber.text);
                  int getnum2=int.parse(getSecondnumber.text);
                  int result=getnum1*getnum2;
                  print(result);

                },
                  color: Colors.deepOrange,
                  child: Text("MUL"),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  int getnum1=int.parse(getFirstnumber.text);
                  int getnum2=int.parse(getSecondnumber.text);
                  double result=getnum1/getnum2;
                  print(result);

                },
                  color: Colors.deepOrange,
                  child: Text("DIV"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

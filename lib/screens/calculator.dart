import 'package:flutter/material.dart';

class CheckApp extends StatefulWidget {
  @override
  _CheckAppState createState() => _CheckAppState();
}

class _CheckAppState extends State<CheckApp> {
  TextEditingController getFirstnum=TextEditingController();
  TextEditingController getSecondnum=TextEditingController();
  double result=0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              double getnum1=double.parse(getFirstnum.text);
              double getnum2=double.parse(getSecondnum.text);

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
              double getnum1=double.parse(getFirstnum.text);
              double getnum2=double.parse(getSecondnum.text);
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
              double getnum1=double.parse(getFirstnum.text);
              double getnum2=double.parse(getSecondnum.text);
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
              double getnum1=double.parse(getFirstnum.text);
              double getnum2=double.parse(getSecondnum.text);
              setState(() {
                result=getnum1/getnum2;
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
    );
  }
}

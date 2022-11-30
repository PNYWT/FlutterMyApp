//Import Widget
import 'package:flutter/material.dart';

//MARK: Run Main
//home: Text("Hello Pets Application") คือการแสดง Label เฉยๆ
//home: Scaffold(appBar: AppBar(title: Text("Hello My Pets Application"),),) //เหมือนแต่ง Navigation

void main() {
  var appTestStatelessWidget = TestStatelessWidget();
  runApp(appTestStatelessWidget);
}

//MARK: Create Widget
//StatelessWidget can't change value
//Scaffold ใช้กำหนดตำแหน่ง Widget เหมือน Auto Layout ใน Xcode
//TextStyle กำหนด Font และ Color


//Class HomePage
class TestStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My TestStatelessWidget",
      home: CountNumber(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

//Class UI Count number
class CountNumber extends StatefulWidget {
  const CountNumber({super.key});

  @override
  State<CountNumber> createState() => _CountNumberState();
}

class _CountNumberState extends State<CountNumber> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      /* MARK: Column Label
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("1 Money App"),
      Text("2 Money App"),
      Text("3 Money App")
    ],
  ),
),
*/

/* MARK: Column, Table
body: Center(
          child: Column(
            children: [
              Text("1 Money App"),
              Text("2 Money App"),
              Text("3 Money App")
            ],
          ),
        ),
*/

/* MARK: Image
body: Center(
  child: Image(
      image: NetworkImage(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Money_Cash.jpg/1280px-Money_Cash.jpg")),
  ),
        */

/* Label
body: Center(
  child: Text(
    "Money App",
    style: TextStyle(fontSize: 24, color: Colors.red),
  ),
),
*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Press Me. !",
              style: TextStyle(fontSize: 24, color: Colors.amber),
            ),
            Text(
              //number.toString()
              "number is $number",
              style: TextStyle(fontSize: 34),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number += 1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

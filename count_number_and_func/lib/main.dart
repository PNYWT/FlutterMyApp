import 'package:flutter/material.dart';

void main() {
  var runMain = MyApp();
  runApp(runMain);
}

//Class HomePage
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HomePage",
      home: CountNumber(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

//Class UI Count number and func
class CountNumber extends StatefulWidget {
  const CountNumber({super.key});

  @override
  State<CountNumber> createState() => _HomeVc();
}

class _HomeVc extends State<CountNumber> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
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
        //Call Func addNumber
        onPressed: addNumber,
        child: Icon(Icons.add),
      ),
    );
  }

  //Create Func addNumber
  void addNumber() {
    setState(() {
      if (number == 10) {
        number = 0;
      } else {
        number += 1;
      }
    });
  }
}

import 'package:flutter/material.dart';

void main() {
  var runMain = HomePage();
  runApp(runMain);
}

//Class HomePage
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HomePageVc",
      home: MyList(),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

//Class UI List
class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    //Create Array Text Start
    List<Widget> data = [];
    for (var i = 1 ;i<=10;i++){
      data.add(Text("data $i"));
    }

    /*
    ประกาศไว้ก่อน Return
    List<Widget> data = [];
    data.add(Text(
      "Data 1",
      style: TextStyle(fontSize: 18, color: Colors.blueAccent),
    ));
    data.add(Text("Data 2"));
    data.add(Text("number is $number"));
    */
    
    /*
    ใส่แบบนี้ใน children: ก็ได้เหมือนกัน
      // [
      //   Text("Data 1"),
      //   Text("Data 2")
      // ],
    */
    //Create Array Text End
    //Return UI Start
    return Scaffold(
      appBar: AppBar(
        title: Text("Show List"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: data,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: Icon(Icons.add),
      ),
    );
  }

  void addNumber() {
    setState(() {
      number += 1;
    });
  }
  //Return UI End
}

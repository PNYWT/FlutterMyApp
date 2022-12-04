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
    //Return UI Start
    return Scaffold(
        appBar: AppBar(
          title: Text("Show List"),
        ),
        //ListViewBuiler เหมาะกับรายการจำนวนมากๆ สามารถระบุจำนวนสิ้นสุดเหมือน List tile ได้
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "Main title: ${index+1}",
              style: TextStyle(fontSize: 18, color: Colors.blueAccent),
            ),
            subtitle: Text(
              "Sub title: ${index+1}",
              style: TextStyle(fontSize: 14, color: Colors.amber),
            ),
          );
        }));
  }
  //Return UI End
}

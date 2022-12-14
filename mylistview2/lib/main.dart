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
      body: Center(
        child: ListView(
          children: getData(100),
        ),
      ),
    );
  }
  //Return UI End

  //Func getdate
  List<Widget> getData(int count) {
    //Create Array Text
    List<Widget> data = [];

    for (var i = 1; i <= count; i++) {
      var listRow = Text(
        "Data return ${i}",
        style: TextStyle(color: Colors.blue, fontSize: 20),
      );
      data.add(listRow);
    }
    return data;
  }
  //Func getdate End
}

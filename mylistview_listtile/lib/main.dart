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
          children: getData(20),
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
      var colorTitleBG = Colors.white.withOpacity(0);
      var colorSubtitleBG = Colors.white.withOpacity(0);
      if (i % 2 == 0) {
        colorTitleBG = Colors.red;
      } else {
        colorSubtitleBG = Colors.blueAccent;
      }

      var listRow = ListTile(
        title: Text(
          "Main title: $i",
          style: TextStyle(
              fontSize: 18, color: Colors.amber, backgroundColor: colorTitleBG),
        ),
        subtitle: Text(
          "Sub title: $i",
          style: TextStyle(
              fontSize: 14,
              color: Colors.amber,
              backgroundColor: colorSubtitleBG),
        ),
      );
      data.add(listRow);
    }
    return data;
  }
  //Func getdate End
}

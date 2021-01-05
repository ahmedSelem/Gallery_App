import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> quotes = [
    "is simply dummy text of the printing and typesetting industry.",
    "It is a long established fact that a reader will be distracted by the readable",
    "Contrary to popular belief, Lorem Ipsum is not simply random text",
    "There are many variations of passages of Lorem Ipsum available",
    "The standard chunk of Lorem Ipsum used since"
  ];

  List<String> imagesNum = ["one", "two", "three", "four", "five"];

  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Gallery Application"),
        backgroundColor: Colors.black38,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            quotes[index],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          Image.asset("assets/images/${imagesNum[index]}.jpg"),
          RaisedButton(
            child: Text(
              "next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            color: Colors.green[600],
            onPressed: () {
              setState(() {
                (index < quotes.length - 1 ) ? 
                index++ : index = 0;
              });
            },
          ),
          RaisedButton(
            child: Text(
              "prev",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            color: Colors.blue[600],
            onPressed: () {
              setState(() {
                (index > 0) ? 
                index-- : index = 4;
              });
            },
          )
        ],
      )),
    );
  }
}

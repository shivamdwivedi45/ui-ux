import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _todoContainer(String text) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black),
      ),
      child: Center(child: Text(text)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _todoContainer("Container 1"),
                    _todoContainer("Container 2"),
                    _todoContainer("Container 1"),
                    _todoContainer("Container 2"),
                  ],
                ),
              ),
              Row(
                children: [
                  _todoContainer("Container 1"),
                  _todoContainer("Container 2"),
                ],
              ),
              Row(
                children: [
                  _todoContainer("Container 1"),
                  _todoContainer("Container 2"),
                ],
              ),
              Row(
                children: [
                  _todoContainer("Container 1"),
                  _todoContainer("Container 2"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

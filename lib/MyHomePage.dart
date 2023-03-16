import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage ({Key? key}) : super(key : key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Ecranlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List App"),
      ),
      backgroundColor: Colors.purple
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade300,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index){
          showDialog(
            context: context,
            builder: (context)=>AlertDialog(
              title: Text('My title'),
              content: Text(
                  'aled'
              ),
            ),
          );
        },
        items: [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.black),
          Icon(Icons.settings, size: 30, color: Colors.white,),
        ],
      ),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade300,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          if (index == 1) {

              showDialog(
                context: context,
                builder: (BuildContext context) =>
                    AlertDialog(
                      title: Text('Ajout à la to do List'),
                      content: Text('Entrez le nom ici'),
                      actions: <TextButton>[
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        },
                          child: const Text('Close'),
                        )
                      ],
                    ),
              );

          }
        },
        items: [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.black),
          Icon(
            Icons.settings,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

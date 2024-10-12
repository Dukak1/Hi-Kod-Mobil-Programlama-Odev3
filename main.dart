import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButtonLocation:
          FloatingActionButtonLocation.miniEndFloat,
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                print("FlotingActionButton'a Basıldı!");
              },
              backgroundColor: Colors.cyan,
              child: Icon(Icons.add)),
          backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text("Hi-Kod"),
            leading: Icon(Icons.menu),
            centerTitle: true,
            actions: [Icon(Icons.accessibility), Icon(Icons.add)],
            forceMaterialTransparency: false,
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(color: Colors.blueGrey, height: 100, width: 50),
                    Container(color: Colors.white, height: 100, width: 50),
                    Container(color: Colors.red, height: 100, width: 50),
                    Container(color: Colors.black, height: 100, width: 50),
                  ],
                ),
                SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(color: Colors.blueGrey, height: 100, width: 50),
                    Container(color: Colors.white, height: 100, width: 50),
                  ],
                ),
                SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(color: Colors.blueGrey, height: 100, width: 50),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
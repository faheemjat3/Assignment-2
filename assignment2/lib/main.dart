
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List name = [
    "Macbook Air",
    "Macbook Pro",
    "Gaming Pc",
    "Backlit Keyboard",
    "Mercedes",
    "Mutton",
    "Roadster"];

  List img = [
    "assets/img/a.jpg",
    "assets/img/b.jpg",
    "assets/img/c.jpg",
    "assets/img/d.jpg",
    "assets/img/e.jpg",
    "assets/img/f.jpg",
    "assets/img/g.jpg"];
  List sub = [
    "5.0 (23 Reviews)",
    "5.0 (23 Reviews)",
    "5.0 (23 Reviews)",
    "5.0 (23 Reviews)",
    "5.0 (23 Reviews)",
    "5.0 (23 Reviews)",
    "5.0 (23 Reviews)",
  ];
  List price = [r"$10", r"$10", r"$10", r"$10", r"$10", r"$10", r"$10"];
  @override
  Widget build(BuildContext context) {
    var a = 10;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "ECOM APP UI",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w400,
                fontSize: 30,
              ),
            ),
          ),
          actions: [
           Padding(padding: const EdgeInsets.only(right: 10) ,
           child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 40,
            ),
            ),
            ],
          elevation: 100.0,
          leading: Icon(
            Icons.menu,
            color: Colors.brown,
            size: 30,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height:20),
                Container(
                  width: 320,
                  child: TextField(
                    cursorColor:Colors.purple ,
                   
                   
                    
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true, 
                    physics: NeverScrollableScrollPhysics(),
                  itemCount: name.length,
                  itemBuilder: ((context, index) {
                    print(name.length);
                    return Column(
                      children: [
                       
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  //1
        
                                  allde(name[index], img[index], sub[index],
                                      price[index]),
                                ],
                              ),
                            ],
                          ),
                        ),
                        index == 6
                            ? Container(
                                child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        "Back Home",
                                        style: TextStyle(
                                            fontSize: 50,
                                            backgroundColor: Colors.pink,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                            : Text("")
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container allde(var name, img, sub, price) {
    return Container(
      child: ListTile(
        leading: Container(
          height: 400,
          child: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.transparent,
            backgroundImage:AssetImage("assets/img/a.jpg"),
          ),
        ),
        title: Container(
          child: Text(
            name,
            style: TextStyle(
                fontSize: 20, fontFamily: 'Arial', fontWeight: FontWeight.w600),
          ),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
              size: 20,
            ),
            Text(sub)
          ],
        ),
        trailing: Text(
          price,
          style: TextStyle(
              color: Colors.purple, fontSize: 25, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp>  createState() => MyStateApp();
}

class MyStateApp extends State<MyApp> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Counter',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),),
                Text(
                  '$num',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num++;
                        });
                        print(num);
                      },
                      child: Text('increment'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num = 0;  });                   
                        print(num);},
                      child: Text('delete')),


                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num--;
                        });
                        print(num);
                      },
                      child: Text('decrement'),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade400,
          centerTitle: true,
          title: const Text(
            "⏱️  Counter App ⏱️",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 10,
                  blurRadius: 20,
                ),
              ]
            ),
            alignment: Alignment.center,

            child: Text(
              "$count",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),

          ),
        ),

        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            FloatingActionButton(
            backgroundColor: Colors.grey.shade600,
            onPressed: () {
              setState(() {
                count++;
              });
            },
              child: const Icon(Icons.add,color: Colors.black,size: 30,),
          ),

            FloatingActionButton(
              backgroundColor: Colors.grey.shade600,
              onPressed: () {
                setState(() {
                  count--;
                });
              },
              child: Icon(Icons.remove,color: Colors.black,size: 30,),
            ),

        ]
        ),
      ),
    );
  }
}


int count=0;
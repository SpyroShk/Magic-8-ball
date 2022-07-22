import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'Magic 8 Ball',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Magic8(),
      ),
    ),
  );
}

class Magic8 extends StatefulWidget {
  const Magic8({Key? key}) : super(key: key);

  @override
  State<Magic8> createState() => _Magic8State();
}

class _Magic8State extends State<Magic8> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballnumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

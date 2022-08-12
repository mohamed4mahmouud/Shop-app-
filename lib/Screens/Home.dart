import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:shop/widgets/icon.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tshirt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        title: Text("Shop"),
        centerTitle: true,
        backgroundColor: Color(0xff0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              card(
                  () {
                    setState(() {});
                  },
                  "T-shirts",
                  Color(0xff1e152f),
                  () {
                    setState(() {});
                  },
                  () {
                    setState(() {
                      tshirt++;
                    });
                  },
                  () {
                    setState(() {
                      if (tshirt > 0) tshirt--;
                    });
                  },
                  tshirt)
            ]),
          )),
        ],
      ),
    );
  }
}

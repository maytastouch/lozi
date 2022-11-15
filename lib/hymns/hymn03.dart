import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../home_page.dart';

class hymn03 extends StatefulWidget {
  const hymn03({Key? key}) : super(key: key);

  @override
  State<hymn03> createState() => _hymn03State();
}

class _hymn03State extends State<hymn03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => TabPage1()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          )
        ],
      ),
      body: ListView(
        children: [
          //title
          Container(
            padding: EdgeInsets.only(top: 10, left: 2),
            child: Text(
              ' 003 - MUTA LU TA BONANA',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          //subtitle
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' FACE TO FACE WITH CHRIST MY SAVIOR\n A.H. 319, C.H. 545 Key: E',
              style: TextStyle(fontSize: 16, wordSpacing: 5),
            ),
          ),

          //verse1
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              " 1\n Kamuta lu ta bonana Ni Jesu ku tab a \n cwani? Ki tabo ha ni Mubona, Jesu Ya\n n'a ni shwezi.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //makutelo
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              " MAKUTELO\n Kamuta lu ta bonana, kwahule kwa halimu,\n Lu ta bonana mwa kanya, Ni tuha ni mu\n bona.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse2
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              " 2\n Ni mu bona mwa lififi, Ni siliwa ki sika;\n Lizazi le linde la ta, Ha ku ta bonwa kanya",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //verse3
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              " 3\n Ha ki tabo fapil'a hae, Manyando at fela;\n Muta ku luka ze maswe, Ze patilwe li\n bonwe.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //verse4
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              " 4\n Ku bonana ha ki bunde! Ku bona ni ku\n ziba; Ku bonana ni mulena Jesu ya ni latile.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

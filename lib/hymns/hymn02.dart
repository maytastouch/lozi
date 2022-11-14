import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../home_page.dart';

class hymn02 extends StatefulWidget {
  const hymn02({Key? key}) : super(key: key);

  @override
  State<hymn02> createState() => _hymn02State();
}

class _hymn02State extends State<hymn02> {
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
              ' 002 - MULENA U FA MUNYAKO',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          //subtitle
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' THE COMING KING IS\n AT THE DOOR - A.H. 411,\n C.H. 546 Key: Bb',
              style: TextStyle(fontSize: 16, wordSpacing: 5),
            ),
          ),

          //verse1
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              " 1\n Mulena U fa munyako, ya na lwezi sifapano,\n Ee, ba ba lukile cwale, Ba t'o ya ni Jesu.",
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
              " MAKUTELO\n Munyako, munyako Mulena u 'nzi fa munyako,\n Jesu Wa ta, Jesu wa ta, U yemi fa munyako.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //verse2
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              " 2\n Lisupo za hae za kuta, ka mwaha za ezahala,\n Lu tuha lu bona cwale, ku taha kwa Jesu.",
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
              " 3\n Fa fasi lindw'a li feli, Ha ku  na kozo ni tabo,\n Konji Mulena h'a kuta, kut'o feza lifu.",
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
              " 4\n Hona mo mwa naha ye nca, Lu yo 'na lu li\n ba banca, Lu ka y'o ina lu sa shwi,\n kamitanimita.",
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

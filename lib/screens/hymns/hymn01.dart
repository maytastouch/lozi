import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lozi/screens/homepage.dart';

class Hymn01 extends StatelessWidget {
  const Hymn01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.green,
        title: const Text('Silozi SDA Hymn'),
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
              ' 001 - LILA PALA',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          //subtitle
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' WATCHMAN BLOW\n THE TRUMPET - A.H. 230,\n C.H. 619 Key: Ab',
              style: TextStyle(fontSize: 16, wordSpacing: 5),
            ),
          ),

          //verse1
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 1\n Muluti, u lize pala, U ilize hahulu;\n Ya ta utwa bulumiwa, a fetuhe a pile',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //chorus
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' MAKUTELO\n Muluti, u lize pala, U ilize hahulu;\n Mulimu U li, U lize! Ba te ba lukuluhe.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse2
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 2\n I lilise fa malundu, Mwa mishitu, mabala;\n Ba mawate huweleza, puluso ya sibili.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse3
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 3\n I lilise mwa nzila, Mwa maneku a mansu;\n Ili, lika li lukile, Ndate Usa litezi.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse4
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 4\n Zibisa ba ba imezwi, Ba ba bata Mulena;\n Zibisa pizo ya jesu, yeli, A mu te ku Na.',
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

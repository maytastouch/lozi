import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lozi/screens/homepage.dart';

class Hymn18 extends StatelessWidget {
  const Hymn18({Key? key}) : super(key: key);

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
              ' 012 - Ku na ni siliba',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          //verse1
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' THERE IS A FOUNTAIN - A.H.135,\n C.H.163, C.S.146\n Key: C',
              style: TextStyle(fontSize: 16, wordSpacing: 5),
            ),
          ),

          //verse1
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 1\n Bona siliba sa mali, A zwile ku Jesu;\n Lisinyi ze nwela mwa ten. Li tapa milatu.\n Li tapa milatu,Li tapa milatu;\n Lisinyi ze nwela mwa ten Li tapa milatu.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),
          //verse2
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 2\n Sholi la taba ku bona, Sona siliba se;\n Ni na ya swana ni Yena, Ni tapise libi.\n Ni tapise libi, Ni tapise libi;\n Ni na ya swana ni Yena, Ni tapise libi.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse3
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 3\n Mawe, Jesu, mali a Hao,\n Ha na ku fokola; Mane batu ba Mulimu,\n Ba yo liululwa: Ba yo liululwa,\n Ba yo liululwa. Mane batu ba Mulimu,\n Ba yo liululwa.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse4
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 4\n Ka sepo ni boni mali, A zwa mwa maniba;\n Ni ambola za lilato, Mane muta ni shwa.\n Mane muta ni shwa, Mane muta ni shwa;\n Ni ambola za lilato, Mane muta ni shwa.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse5
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 5\n Jesu Wa ni lukiseza, Ni ha ni li maswe:\n Tifo ya mali a Jesu, Bupilo katima,\n Bupilo kamita, Bupilo kamita;\n Tifo ya mali a Jesu, Bupilo kamita.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse6
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 6\n Pina i ten ye munati, Ye ni ta opela:\n Muta lilimi le la ka, li zwa mwa libita.\n Li zwa mwa libita, Li zwa mwa libita:\n Muta lilimi le la ka, Li zwa mwa libita.',
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

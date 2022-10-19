import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lozi/screens/homepage.dart';
import 'package:lozi/screens/navbar.dart';

class Hymn11 extends StatelessWidget {
  const Hymn11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => navBar()));
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
              ' 011 - Ni ta latelela Jesu. ',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          //subtitle
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' I WILL FOLLOW THEE - A.H.282,\n C.H.266, C.S.409\n Key: Ab',
              style: TextStyle(fontSize: 16, wordSpacing: 5),
            ),
          ),

          //verse2
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 2\n Ni ha nzila i li maswe. Ye sina bulondotwi\n U kile wa i zamaya. Ni ta ku latelela.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //chorus
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' \n MAKUTELO:\n Ni ta latelela Jesu. U ni shwezi kaniti;\n Ni ha ba ku fulalela. Ni ta ku latelela.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse3
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 3\n Ni ka fumana manyando.\n Ni ku likwa hahulu; Ni Wena U no  likilwe,\n Ni ta ku latelela.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse4
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 4\n Ni ha ni li mwa manyando.\n Ni li ya fulalezwi; Wena U no li munyandi.\n Ni ta ku latelela.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse5
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' 5\n Ni ha ni ya mwa mandinda.\n A bata, a tungile: Wena U no a silile.\n Ni sa ku latelela.',
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),
        ],
      ),
    );
  }
}

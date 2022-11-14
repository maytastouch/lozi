import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../home_page.dart';

class hymn04 extends StatefulWidget {
  const hymn04({Key? key}) : super(key: key);

  @override
  State<hymn04> createState() => _hymn04State();
}

class _hymn04State extends State<hymn04> {
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
              ' 004 - WA TA',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          //subtitle
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' HE IS COMING\n A.H. 407, C.H. 669 Key: A',
              style: TextStyle(fontSize: 16, wordSpacing: 5),
            ),
          ),

          //verse1
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              " 1\n Ki a mande manzwi mwa zebe ya mueti,\n Yanz'a yambaela kwa hule!\n Kapili-pili Mupulusi wa ta, cwale mubuso wa\n ta.",
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
              " MAKUTELO\n Wa taha, Wa taha cwanon'u fa,\n Wa kuta fa lifasi le;\n Mi baeti bat a t'o ya kwa kanya, Jesu ha a\n to lena.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse2
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              " 2\n Mabita a kale mo ku 'nzi baeti,\n A ta t'o kwahululwa cwale;\n Ee, ni ba ba lobezi mwa liwate,\n Ba ta 'na fa fasi fa.",
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
              " 3\n Lu ta katana mwa edeni yo munca,\n lu opela lipina ze nde;\n Ba ta zwa kwa mutulo ni kwa mbowela;\n ku t'o lapela Jesu.",
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
              " 4\n Aleluya, Amen! Aleluya hape!\n Lwa ya cwale ha lu sepeha;\n Lu libellee ni ku nyakalala,\n Lu ta fiwa mushukwe.",
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

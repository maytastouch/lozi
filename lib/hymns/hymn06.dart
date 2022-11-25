import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../home_page.dart';

class hymn06 extends StatefulWidget {
  const hymn06({Key? key}) : super(key: key);

  @override
  State<hymn06> createState() => _hymn06State();
}

class _hymn06State extends State<hymn06> {
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
              ' 006 - BALUMELI A MU TONE',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),

          //subtitle
          Container(
            padding: EdgeInsets.only(top: 20, left: 2),
            child: Text(
              ' WATCH YE SAINTS\n A.H. 415, C.H. 549, C.S. 877 Key: E',
              style: TextStyle(fontSize: 16, wordSpacing: 5),
            ),
          ),

          //verse1
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "1\nBalumeli, a mu tone, A mu bone liponiso;\nA mu tukise maboni, kakuli Jesu Wa taha.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //makutelo
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "MAKUTELO\nWa taha! Jesu Wa ta! Wa taha; U ta ka kanya!\nJesu Wa ta A t'o busa. Wa taha! Ee Wa taha.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          //verse2
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "2\nSepiso ya Mupulusi, Musa o kile wa lekwa;\nLikobo ze na ni mali, li bonise tukuluho.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //verse3
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "3\nMibuso i nze i fela, Utwa mulumo wa taha;\nZibisa batu za muhau, Ha ku nze ku lila pala.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //verse4
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "4\nMacaba a kokobela, Jesu h'a sa mi yemela;\nLifasi 'se li laeza, Huweleza balumeli.",
              style: TextStyle(fontSize: 18, wordSpacing: 5),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //verse5
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "5\nBaezalibi mu tahe, Jesu h'a sa mi yemela;\nMuhau ha u sa li ten'i. ku tuha ku fela cwale.",
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

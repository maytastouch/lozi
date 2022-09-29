import 'package:flutter/material.dart';
import 'package:lozi/screens/hymns/hymn12.dart';

import 'hymns/hymn11.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Silozi SDA Hymn'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          //11
          //white
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 216, 212, 212)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                alignment: Alignment.centerLeft,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Hymn11()));
              },
              child: Text('011 - Ni ta latelela Jesu ')),

          //12
          //grey
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 255, 255, 255)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              alignment: Alignment.centerLeft,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Hymn18()));
            },
            child: Text(
              '012 - Ku na ni siliba',
            ),
          ),
        ],
      ),
    );
  }
}

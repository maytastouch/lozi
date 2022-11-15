import 'package:flutter/material.dart';
import 'package:persistent_bottom_bar/hymns/hymn02.dart';
import 'package:persistent_bottom_bar/hymns/hymn03.dart';
import 'package:persistent_bottom_bar/hymns/hymn04.dart';
import 'package:persistent_bottom_bar/persistent_bottom_bar_scaffold.dart';

import 'hymns/hymn01.dart';

class HomePage extends StatelessWidget {
  final _tab1navigatorKey = GlobalKey<NavigatorState>();
  final _tab2navigatorKey = GlobalKey<NavigatorState>();
  final _tab3navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return PersistentBottomBarScaffold(
      items: [
        PersistentTabItem(
          tab: TabPage1(),
          icon: Icons.home_outlined,
          title: 'Home',
          navigatorkey: _tab1navigatorKey,
        ),
        PersistentTabItem(
          tab: TabPage2(),
          icon: Icons.favorite,
          title: 'Favorites',
          navigatorkey: _tab2navigatorKey,
        ),
        PersistentTabItem(
          tab: TabPage3(),
          icon: Icons.scatter_plot,
          title: 'Settings',
          navigatorkey: _tab3navigatorKey,
        ),
      ],
    );
  }
}

class TabPage1 extends StatefulWidget {
  const TabPage1({Key? key}) : super(key: key);

  @override
  State<TabPage1> createState() => _TabPage1State();
}

class _TabPage1State extends State<TabPage1> {
  List<Map<String, dynamic>> _allHymns = [
    {"id": "001", "name": "LILA PALA"},
    {"id": "002", "name": "MULENA U FA MUNYAKO"},
    {"id": "003", "name": "MUTA LU TA BONANA"},
    {"id": "004", "name": "WA TA"},
    {"id": "005", "name": "KWA MUNZI KI KWA HULE NJI"},
    {"id": "006", "name": "BALUMELI A MU TONE"},
    {"id": "007", "name": "HA A KA TAHA"},
    {"id": "008", "name": "MUTA MABIZO A BIZWA"},
  ];

  List<Widget> route = [Hymn01(), hymn02(), hymn03(), hymn04()];

  List<Map<String, dynamic>> _foundHymns = [];
  @override
  initState() {
    _foundHymns = _allHymns;
    super.initState();
  }

  void _runFilter(String enteredKeyWord) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyWord.isEmpty) {
      results = _allHymns;
    } else {
      results = _allHymns
          .where((user) =>
              user["name"]
                  .toUpperCase()
                  .contains(enteredKeyWord.toUpperCase()) ||
              user["id"].toUpperCase().contains(enteredKeyWord.toUpperCase()))
          .toList();
    }

    setState(() {
      _foundHymns = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Silozi SDA Hymn'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 1),
            child: TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'keta',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.green))),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: _foundHymns.length,
                  itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundHymns[index]["id"]),
                        color: Color.fromARGB(255, 255, 255, 255),
                        shadowColor: Colors.white,
                        //elevation: 2,
                        margin: const EdgeInsets.symmetric(vertical: 1),
                        child: ListTile(
                          leading: Container(
                            margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                            child: Text(
                              _foundHymns[index]["id"].toString(),
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                          ),
                          // title: Text(
                          //   _allHymns[index]['name'],
                          //   style: TextStyle(color: Colors.white),
                          // ),
                          title: Text(
                            '${_foundHymns[index]["name"].toString()}',
                            style: TextStyle(color: Colors.black),
                          ),
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => route[index])),
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

//favorites page

class TabPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Silozi SDA Hymn'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(),
    );
  }
}

class TabPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Silozi SDA Hymn'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(),
    );
  }
}

class Page1 extends StatelessWidget {
  final String inTab;

  const Page1(this.inTab);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Container(),
    );
  }
}

class Page2 extends StatelessWidget {
  final String inTab;

  const Page2(this.inTab);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Container(),
    );
  }
}

class Page3 extends StatelessWidget {
  final String inTab;

  const Page3(this.inTab);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 3')),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('in $inTab Page 3'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Go back'))
          ],
        ),
      ),
    );
  }
}

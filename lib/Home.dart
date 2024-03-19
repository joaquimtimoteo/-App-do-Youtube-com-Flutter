import 'package:appyoutube/telas/emAlta.dart';
import 'package:appyoutube/telas/inicio.dart';
import 'package:appyoutube/telas/inscricoes.dart';
import 'package:appyoutube/telas/subscricoes.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  static const List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.home),
      label: 'Início',
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.whatshot),
      label: 'Em alta',
    ),
    BottomNavigationBarItem(
        backgroundColor: Colors.orange,
        label: "Inscrições",
        icon: Icon(Icons.subscriptions)),
    BottomNavigationBarItem(
        icon: Icon(Icons.folder),
        label: "Subscrições",
        backgroundColor: Colors.green)
  ];

  List<Widget> _pages = [
    Inicio(),
    EmAlta(),
    inscricoes(),
    subscricoes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("Clicado no VideoCamp");
              },
              icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: _bottomNavigationBarItems,
      ),
    );
  }
}

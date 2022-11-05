import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexted = 0;
  _click(index) {
    setState(() {
      _indexted = index;
    });
  }

  List<Widget> _page = [
    Center(
      child: Text(
        "Home",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    Center(
      child: Text(
        "Add",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _page[_indexted],
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment(0, 1),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                    currentIndex: _indexted,
                    onTap: _click,
                    backgroundColor: Colors.black,
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.grey,
                    showSelectedLabels: true,
                    showUnselectedLabels: false,
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: "Home"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.add_box), label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: "Profile"),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

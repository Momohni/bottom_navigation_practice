import 'package:bottom_navigation_practice/defaults/defaults.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexClicked = 0;
  final pages = [
    Center(child: Text('Inbox'),),
    Center(child: Text('Starred'),),
    Center(child: Text('Sent'),),
    Center(child: Text('Draft'),),
    Center(child: Text('Trash'),),
    Center(child: Text('Spam'),)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation'),),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 189, 209, 228),
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Defaults.bottomNavItemSelectedColor,
        unselectedItemColor: Defaults.bottomNavItemColor,
        currentIndex: indexClicked,
        elevation: 60,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
            Defaults.bottomNavItemIcon[0],),
            label: Defaults.bottomNavItemText[0]),
          BottomNavigationBarItem(
            icon: Icon(
            Defaults.bottomNavItemIcon[1],),
            label: Defaults.bottomNavItemText[1]),
          BottomNavigationBarItem(
            icon: Icon(
            Defaults.bottomNavItemIcon[2],),
            label: Defaults.bottomNavItemText[2]),
          BottomNavigationBarItem(
            icon: Icon(
            Defaults.bottomNavItemIcon[3],),
            label: Defaults.bottomNavItemText[3]),
          BottomNavigationBarItem(
            icon: Icon(
            Defaults.bottomNavItemIcon[4],),
            label: Defaults.bottomNavItemText[4]),
          BottomNavigationBarItem(
            icon: Icon(
            Defaults.bottomNavItemIcon[5],),
            label: Defaults.bottomNavItemText[5]),
      ]),
    );
  }
}
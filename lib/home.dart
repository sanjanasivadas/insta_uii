import 'package:flutter/material.dart';
import 'package:insta_uii/screens/favourites.dart';
import 'package:insta_uii/screens/home_page.dart';
import 'package:insta_uii/screens/profile.dart';
import 'package:insta_uii/screens/reels_page.dart';
import 'package:insta_uii/screens/search_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedIndex = 0;
  var page = [
    Home_Page(),
    Search(),
    Reels(),
    Fav(),
    Profile(),
  ];
  void onchange(int index){
    setState(() {
      selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: page.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onchange,

        type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,
          items:  [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.video_collection),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_rounded),label: ''),
        BottomNavigationBarItem(icon: CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),),label: ''),
      ]),
    );
  }
}
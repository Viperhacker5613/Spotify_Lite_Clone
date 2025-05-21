import 'package:flutter/material.dart';
import 'package:sopitify_clone/pages/favorite.dart';
import 'package:sopitify_clone/pages/home1.dart';
import 'package:sopitify_clone/pages/premium.dart';
import 'package:sopitify_clone/pages/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentpage = 0;

  late List<Widget> page;

  @override
  void initState() {
    super.initState();
    page = [Home1(), Search(), Favorite(), Premium()];
  }

  void item(index) {
    setState(() {
      currentpage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: page[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 12),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentpage,
        onTap: item,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/Icon/home.png',
              color: Colors.grey,
              height: 24,
              width: 22,
            ),
            activeIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
            activeIcon: Image.asset(
              'assets/Icon/search.png',
              height: 24,
              width: 22,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/Icon/spotify1.png',
              height: 25,
              width: 25,
            ),
            activeIcon: Image.asset(
              'assets/Icon/Spotifylogo.png',
              height: 25,
              width: 25,
            ),
            label: 'Premium',
          ),
        ],
      ),
    );
  }
}

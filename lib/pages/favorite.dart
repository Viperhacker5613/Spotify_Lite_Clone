import 'package:flutter/material.dart';
import 'package:sopitify_clone/favorite_pages/albums.dart';
import 'package:sopitify_clone/favorite_pages/artists.dart';
import 'package:sopitify_clone/favorite_pages/playlists.dart';
import 'package:sopitify_clone/favorite_pages/podcasts.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  final List<Widget> page = [Playlists(), Artists(), Albums(), Podcasts()];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: GestureDetector(
                      onTap:
                          () => setState(() {
                            selectedindex = 0;
                          }),
                      child: Text(
                        'Playlists',
                        style: TextStyle(
                          color:
                              selectedindex == 0 ? Colors.white : Colors.grey,
                          fontWeight:
                              selectedindex == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: GestureDetector(
                      onTap:
                          () => setState(() {
                            selectedindex = 1;
                          }),
                      child: Text(
                        'Artists',
                        style: TextStyle(
                          color:
                              selectedindex == 1 ? Colors.white : Colors.grey,
                          fontWeight:
                              selectedindex == 1
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: GestureDetector(
                      onTap:
                          () => setState(() {
                            selectedindex = 2;
                          }),
                      child: Text(
                        'Albums',
                        style: TextStyle(
                          color:
                              selectedindex == 2 ? Colors.white : Colors.grey,
                          fontWeight:
                              selectedindex == 2
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: GestureDetector(
                      onTap:
                          () => setState(() {
                            selectedindex = 3;
                          }),
                      child: Text(
                        'Podcasts',
                        style: TextStyle(
                          color:
                              selectedindex == 3 ? Colors.white : Colors.grey,
                          fontWeight:
                              selectedindex == 3
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: page[selectedindex]),
          ],
        ),
      ),
    );
  }
}

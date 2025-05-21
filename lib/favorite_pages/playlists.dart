// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  color: Colors.grey[900],
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Center(child: Icon(Icons.add)),
                  ),
                ),
                title: Text(
                  'Create Playlist',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 26, 35, 215),
                        const Color.fromARGB(255, 239, 41, 213),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Center(
                      child: Icon(Icons.favorite, color: Colors.white),
                    ),
                  ),
                ),
                title: Text('Favorite', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  '3 favorite songs',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 55,
                  width: 45,
                  child: Image.asset(
                    'assets/playlist/play1.png',
                    height: 55,
                    width: 45,
                  ),
                ),
                title: Text(
                  '2016 - 2018 dance | minlee',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'by minlee',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  child: Image.asset('assets/playlist/play2.png'),
                ),
                title: Text(
                  'JazzSkinny',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'by Shehryar Jaskani',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  child: Image.asset('assets/playlist/play3.png'),
                ),
                title: Text('PHONK', style: TextStyle(color: Colors.white)),
                subtitle: Text(
                  'by Tribal Trap',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

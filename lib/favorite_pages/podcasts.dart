import 'package:flutter/material.dart';

class Podcasts extends StatelessWidget {
  const Podcasts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 190),
            Icon(Icons.favorite_outline, color: Colors.white, size: 50),
            SizedBox(height: 20),
            Text(
              'No favorite yet.',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Songs, albums, artists, playlist and podcasts',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "you've liked will live here",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

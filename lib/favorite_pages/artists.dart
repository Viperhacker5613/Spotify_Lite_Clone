import 'package:flutter/material.dart';

class Artists extends StatelessWidget {
  const Artists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[900],
              radius: 25,
              child: Center(child: Icon(Icons.add, color: Colors.grey[700])),
            ),
            title: Text('Add Artists', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Image.asset(
              'assets/aritst/ar1.png',
              height: 60,
              width: 55,
            ),
            title: Text('Arijit Singh', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Image.asset(
              'assets/aritst/ar2.png',
              height: 60,
              width: 55,
            ),
            title: Text('Justim Bieber', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Image.asset(
              'assets/aritst/ar3.png',
              height: 60,
              width: 55,
            ),
            title: Text('Neha Kakkar', style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Image.asset(
              'assets/aritst/ar4.png',
              height: 60,
              width: 55,
            ),
            title: Text('Selena Gomez', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

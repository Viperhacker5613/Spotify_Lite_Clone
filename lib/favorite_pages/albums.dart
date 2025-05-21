import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  const Albums({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 10),
          ListTile(
            leading: Container(
              height: 45,
              width: 45,
              child: Image.asset('assets/favorite/fav1.png'),
            ),
            title: Text('Feather', style: TextStyle(color: Colors.white)),
            subtitle: Text('Shayne Orok', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}

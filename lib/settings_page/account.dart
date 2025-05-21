import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Account',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Username', style: TextStyle(color: Colors.grey)),
            subtitle: Text('3qerdajfk4fkue6fjyzlkesll4ajleipanx'),
          ),
          ListTile(
            title: Text('E-mail', style: TextStyle(color: Colors.grey)),
            subtitle: Text('username123@gmail.com'),
          ),
          ListTile(
            title: Text('Account', style: TextStyle(color: Colors.grey)),
            subtitle: Text('Free'),
          ),
          ListTile(
            title: Text(
              'Upgrade to Premium',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Upgrade to premium to listen to music ad-free with unlimited skips',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

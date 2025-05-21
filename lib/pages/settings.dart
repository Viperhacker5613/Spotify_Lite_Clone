import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        toolbarHeight: 40,
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/Mobiledata');
                },
                title: Text(
                  'Mobile Data',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '0 B used by Spotify Lite this month',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/Storage');
                },
                title: Text(
                  'Storage',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '128 MB used by Spotify Lite',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/Audio');
                },
                title: Text(
                  'Audio Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Audio quality: Basic',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                title: Text(
                  'Download Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Downloading on WI-FI only',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/Download");
                },
              ),

              ListTile(
                title: Text(
                  'Privacy Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Manage sharing you listening acitvity',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/Privacy");
                },
              ),
              ListTile(
                title: Text(
                  'Explicit Content',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Explicit content allowed',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/Explicit");
                },
              ),
              ListTile(
                title: Text(
                  'Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Free account',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/Account');
                },
              ),
              ListTile(
                title: Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  'Spotify version 1.9.0.72404',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/About');
                },
              ),
              SizedBox(height: 35),
              ListTile(
                minTileHeight: 10,
                leading: Image.asset(
                  'assets/Icon/Spotifylogo.png',
                  height: 25,
                  width: 25,
                ),
                title: Text(
                  'Try Spotify Lite',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 5),
              ListTile(
                leading: Image.asset(
                  'assets/Icon/logout.png',
                  height: 25,
                  width: 25,
                ),
                title: Text('Log out', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

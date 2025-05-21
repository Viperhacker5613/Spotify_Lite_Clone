import 'package:flutter/material.dart';

class Storage extends StatelessWidget {
  const Storage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Storage',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'App Internal storage',
                  style: TextStyle(color: Colors.white),
                ),
                Text('128 GB', style: TextStyle(color: Colors.white)),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 30),
              child: Stack(
                children: [
                  Container(
                    height: 10,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(68, 158, 158, 158),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: 0.85,
                    child: Container(
                      height: 10,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 33, 44, 243),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 33, 44, 243),
                      radius: 7,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Other Apps: ',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      '108 GB',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.green, radius: 7),
                    SizedBox(width: 10),
                    Text(
                      'Spotify Lite:  ',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      '125 MB',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(67, 158, 158, 158),
                      radius: 7,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Free Space:  ',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      '20 GB',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Cache: ', style: TextStyle(color: Colors.white)),
                    Text(
                      '10KB ',
                      style: TextStyle(
                        color: const Color.fromARGB(187, 158, 158, 158),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  'These are small, tempray files to make the app work faster on slow networks',
                  style: TextStyle(color: Color.fromARGB(187, 158, 158, 158)),
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(24, 158, 158, 158),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Clear cache',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('downloads: ', style: TextStyle(color: Colors.white)),
                    Text(
                      '0B ',
                      style: TextStyle(
                        color: const Color.fromARGB(187, 158, 158, 158),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "This is the music donwloaded for offline listening or Spotify Lite. You'll need to download it again to listen offline if you delete it. ",
                  style: TextStyle(color: Color.fromARGB(187, 158, 158, 158)),
                ),
                SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(20, 158, 158, 158),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Delete all downloads',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sopitify_clone/utils/data.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black, toolbarHeight: 30),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Search',
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(Icons.search_outlined, size: 30),
                      SizedBox(width: 15),
                      Text('Search artists, songs and playlists'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[0]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[0]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[1]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[1]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[2]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[2]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[3]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[3]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[4]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[4]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[5]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[5]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[6]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[6]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[7]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[7]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[8]['color'],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(right: 73, top: 24),
                              child: Column(
                                children: [
                                  Text(
                                    search[8]['name'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    search[8]['name1'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[9]['color'],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: 24, left: 10),
                              child: Text(
                                search[9]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[10]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[10]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[11]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[11]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[12]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[12]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: search[13]['color'],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 24),
                              child: Text(
                                search[13]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

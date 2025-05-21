import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MobileData extends StatefulWidget {
  const MobileData({super.key});

  @override
  State<MobileData> createState() => _MobileDataState();
}

class _MobileDataState extends State<MobileData> {
  final List<String> options = [
    '250 MB',
    '500 MB',
    '750 MB',
    '1 GB',
    '2 GB',
    '3 GB',
  ];
  String selected = '500 MB';

  InlineSpan buildSelectedTextSpan(String value) {
    final RegExp regex = RegExp(r'(\d+)\s*(MB|GB)', caseSensitive: false);
    final match = regex.firstMatch(value);

    if (match != null) {
      final number = match.group(1);
      final unit = match.group(2);

      return TextSpan(
        children: [
          TextSpan(
            text: number,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          TextSpan(
            text: ' $unit',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
        ],
      );
    }

    // fallback
    return TextSpan(
      text: value,
      style: TextStyle(fontSize: 30, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Mobile Data',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ), // optional font consistency
                            children: [
                              TextSpan(
                                text: '0',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: 'B',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(
                                text: ' / ',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                              buildSelectedTextSpan(selected),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'mobile data used this month',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 15),
                Text(
                  'Your limit will reset on Jan 5',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 10,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color.fromARGB(67, 158, 158, 158),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 3),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0 B', style: TextStyle(color: Colors.white)),
                  Text(selected, style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.blue, radius: 7),
                      SizedBox(width: 10),
                      Text(
                        'Used: ',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      Text(
                        '0 B',
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
                        'Remaining:  ',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      Text(selected, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                'Set a Monthly limit for Spotify Lite:',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 2.4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children:
                          options.map((option) {
                            final bool isSelected = option == selected;
                            return GestureDetector(
                              onTap: () => setState(() => selected = option),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(
                                  option,
                                  style: TextStyle(
                                    color:
                                        isSelected
                                            ? Colors.black
                                            : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                "We'll let you know if it goes over you limit",
                style: TextStyle(color: Color.fromARGB(67, 158, 158, 158)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

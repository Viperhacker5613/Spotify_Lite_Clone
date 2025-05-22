import 'package:flutter/material.dart';

class AudioSettings extends StatefulWidget {
  const AudioSettings({super.key});

  @override
  State<AudioSettings> createState() => _AudioSettingsState();
}

class _AudioSettingsState extends State<AudioSettings> {
  String selectedQuality = 'Basic';
  bool isToggled = false;
  bool isToggled1 = false;
  bool isToggled2 = true;
  bool isToggled3 = true;
  double _sliderValue = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Audio Settings',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  'Audio Quality',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text('Basic', style: TextStyle(color: Colors.white)),
                  subtitle: Text(
                    'About 0.5 MB per song',
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing:
                      selectedQuality == 'Basic'
                          ? Icon(Icons.done, color: Colors.green)
                          : null,
                  onTap: () {
                    setState(() {
                      selectedQuality = 'Basic';
                    });
                  },
                ),

                ListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text('Normal', style: TextStyle(color: Colors.white)),
                  subtitle: Text(
                    'About 1 Mb per song',
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing:
                      selectedQuality == 'Normal'
                          ? Icon(Icons.done, color: Colors.green)
                          : null,
                  onTap: () {
                    setState(() {
                      selectedQuality = 'Normal';
                    });
                  },
                ),

                ListTile(
                  hoverColor: Colors.grey,
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text('High', style: TextStyle(color: Colors.white)),
                  subtitle: Text(
                    'About 2-4 MB per song',
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing:
                      selectedQuality == 'High'
                          ? Icon(Icons.done, color: Colors.green)
                          : null,
                  onTap: () {
                    setState(() {
                      selectedQuality = 'High';
                    });
                  },
                ),
                SizedBox(height: 5),
                Text(
                  'Higher audio quality will use more mobile data from your plan. It may aslso take longer to load on slow networks.',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
                SizedBox(height: 10),
                Divider(color: const Color.fromARGB(160, 158, 158, 158)),
                SizedBox(height: 5),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text(
                    'Data Saver',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "This will change the audio quality to Basic when you're playing music on mobile data.",
                  ),
                  trailing: Switch(
                    value: isToggled,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.grey,

                    onChanged: (value) {
                      setState(() {
                        isToggled = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10),
                Divider(color: const Color.fromARGB(160, 158, 158, 158)),
                SizedBox(height: 5),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text(
                    'Equalizer',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text('Open the equalizer control panel'),
                ),
                SizedBox(height: 10),
                Divider(color: const Color.fromARGB(160, 158, 158, 158)),
                SizedBox(height: 5),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text(
                    'Crossfade',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text('Allow you to cross fade between songs.'),
                ),
                Row(
                  children: [
                    Text(
                      _sliderValue == 0 ? 'Off' : '0 s',
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.green,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: Colors.green,
                          overlayColor: Colors.green,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 8.0,
                          ),
                          trackHeight: 2.5,
                        ),
                        child: Slider(
                          min: 0,
                          max: 60,
                          divisions: 12,
                          value: _sliderValue,
                          onChanged: (value) {
                            setState(() {
                              _sliderValue = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Text(
                      '${_sliderValue.toInt()} s',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: const Color.fromARGB(160, 158, 158, 158)),
                SizedBox(height: 5),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text('Gapless', style: TextStyle(color: Colors.white)),
                  subtitle: Text("Allows gapless playback"),
                  trailing: Switch(
                    value: isToggled1,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.grey,

                    onChanged: (value) {
                      setState(() {
                        isToggled1 = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10),
                Divider(color: const Color.fromARGB(160, 158, 158, 158)),
                SizedBox(height: 5),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text('Automix', style: TextStyle(color: Colors.white)),
                  subtitle: Text(
                    "Alow smooth transitions between songs in a playlist",
                  ),
                  trailing: Switch(
                    value: isToggled2,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.grey,

                    onChanged: (value) {
                      setState(() {
                        isToggled2 = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 5),
                Divider(color: const Color.fromARGB(160, 158, 158, 158)),
                SizedBox(height: 10),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 0),
                  title: Text(
                    'Normalize volume',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text("Set the same volume level for all tracks."),
                  trailing: Switch(
                    value: isToggled3,
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.grey,

                    onChanged: (value) {
                      setState(() {
                        isToggled = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

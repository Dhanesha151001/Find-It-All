import 'package:blackcoffer/explore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Refine extends StatefulWidget {
  const Refine({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Refine> createState() => _RefineState();
}

class _RefineState extends State<Refine> {
  late String _selectedVal;
  final List<String> _status = ["SOS! Emergency", "Need Assistance", "Help!"];
  final TextEditingController _textController = TextEditingController();
  int _wordCount = 0;
  final int _maxWordCount = 250;
  List<String> selectedButtons = [];
  final List<String> buttons = [
    'Coffee',
    'Business',
    'Hobbies',
    'Friendship',
    'Movies',
    'Dining',
    'Dating',
    'Matrimony',
  ];

  int _currentIndex = 0;
  final screens = [
    const Refine(
      title: '',
    ),
    const explore(),
  ];

  void toggleButton(String button) {
    setState(() {
      if (selectedButtons.contains(button)) {
        selectedButtons.remove(button);
      } else {
        selectedButtons.add(button);
      }
    });
  }

  RangeValues values = const RangeValues(500, 100000);

  _onChanged(String value) {
    setState(() {
      _wordCount = value.length;
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _selectedVal = _status[0];
  }

  double distance = 500;

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Refine',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.location_on, size: 12, color: Colors.white),
                Text(
                  'Seattle, Washington',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
        backgroundColor: const Color(0xFF00008B),
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const SizedBox(
              height: 18.0,
            ),
            Text(
              'Select Your Status',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: HexColor('#00008B')),
            ),
            const SizedBox(
              height: 18.0,
            ),
            DropdownButtonFormField(
              value: _selectedVal,
              items: _status
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _selectedVal = val as String;
                });
              },
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Broadcast Your Message',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: HexColor('#00008B'),
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            TextField(
              controller: _textController,
              onChanged: _onChanged,
              maxLength: 250,
              maxLines: null,
              decoration: InputDecoration(
                counterText: '$_wordCount / $_maxWordCount words',
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Select Nearby Distance',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: HexColor('#00008B'),
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            ListTile(
              title: Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Slider(
                        value: distance.toDouble(),
                        min: 500,
                        max: 100000,
                        divisions: 10,
                        label: distance.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            print('$value m');
                            distance = value.toDouble();
                          });
                        },
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('500 m'),
                        Text('100 km'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Select Purpose',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: HexColor('#00008B'),
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 5,
                  ),
                  itemBuilder: (context, index) {
                    final button = buttons[index];
                    final isSelected = selectedButtons.contains(button);

                    return ElevatedButton(
                      onPressed: () => toggleButton(button),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.blue.shade500;
                            } else if (isSelected) {
                              return Colors.blue;
                            }
                            return Colors.grey; // Unselected color
                          },
                        ),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (isSelected) {
                              return Colors.white;
                            }
                            return Colors.black;
                          },
                        ),
                      ),
                      child: Text(button),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_rtl_sharp),
            label: 'Refine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.network_wifi_outlined),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contacts',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(index);
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => explore()),
              );
            }
          });
        },
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        // Custom selected icon color
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

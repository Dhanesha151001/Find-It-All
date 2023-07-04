import 'package:blackcoffer/refine.dart';
import 'package:flutter/material.dart';

class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  var _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 12, color: Colors.white),
                    Text(
                      'San Francisco, California',
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
            bottom: const TabBar(
                indicator: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                tabs: [
                  Tab(text: 'INDIVIDUAL'),
                  Tab(text: 'PROFESSIONAL'),
                  Tab(text: 'MERCHANT'),
                ]
            )

      ),
        body: SingleChildScrollView(
          child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 37,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_list_sharp),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage('https://picsum.photos/100'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Text('+ Invite'),
                                  )
                                ],
                              ),
                              const Text('Michael Murphy',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              const Text('San Francisco, within 1km',
                                  style: TextStyle(fontSize: 12)),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 170,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            // Round top left corner
                                            bottomLeft: Radius.circular(
                                                20), // Round bottom left corner
                                          ), // Adjust the radius as needed
                                        ),
                                        height: 10,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            // Round top left corner
                                            bottomRight: Radius.circular(
                                                20), // Round bottom left corner
                                          ), // Adjust the radius as needed
                                        ),
                                        height: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text(
                        'Friendship | Coffee | Hangout\nHi community! I am open to new connections'),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage('https://picsum.photos/100'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Text('Pending'),
                                  )
                                ],
                              ),
                              const Text('John Doe',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              const Text('San Francisco, within 1 km',
                                  style: TextStyle(fontSize: 12)),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 170,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            // Round top left corner
                                            bottomLeft: Radius.circular(
                                                20), // Round bottom left corner
                                          ), // Adjust the radius as needed
                                        ),
                                        height: 10,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            // Round top left corner
                                            bottomRight: Radius.circular(
                                                20), // Round bottom left corner
                                          ), // Adjust the radius as needed
                                        ),
                                        height: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: Text(
                          'Coffee | Movies | Hobbies\nGoing to Berkley, would love to share a ride with someone like minded.'),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage('https://picsum.photos/100'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: Text('Pending'),
                                  )
                                ],
                              ),
                              const Text('Jennifer',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              const Text('San Francisco, within 1.5 km',
                                  style: TextStyle(fontSize: 12)),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 170,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 7,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            // Round top left corner
                                            bottomLeft: Radius.circular(
                                                20), // Round bottom left corner
                                          ), // Adjust the radius as needed
                                        ),
                                        height: 10,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            // Round top left corner
                                            bottomRight: Radius.circular(
                                                20), // Round bottom left corner
                                          ), // Adjust the radius as needed
                                        ),
                                        height: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text('Hi community! I am open to new connections'),
                  ],
                ),
              ),
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
                  MaterialPageRoute(builder: (context) => const explore()),
                );
              }
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Refine(
                            title: '',
                          )),
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
      ),
    );
  }
}

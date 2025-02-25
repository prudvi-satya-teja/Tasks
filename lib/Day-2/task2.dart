import 'package:flutter/material.dart';

class ShortScreen extends StatefulWidget {
  const ShortScreen({super.key});

  @override
  State<ShortScreen> createState() => ShortScreenState();
}

class ShortScreenState extends State<ShortScreen> {
  int selectedIndex = 0;

  final List<String> imageUrls = [
    'assets/image0.jpeg',
    'assets/image1.webp',
    'assets/image2.jpeg',
    'assets/image3.jpg',
    'assets/image4.jpg',
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Shorts",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 81, 79, 79),
                ),
                child: Image.asset(imageUrls[index], fit: BoxFit.cover),
              ),
              Positioned(
                right: 10,
                bottom: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                    const Text("1.2K", style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 10),
                    IconButton(
                      icon: const Icon(
                        Icons.comment,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                    const Text("325", style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 10),
                    IconButton(
                      icon: const Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                    const Text("Share", style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 10),
                    IconButton(
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: 40),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}

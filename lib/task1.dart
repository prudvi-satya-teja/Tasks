import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<String> quickActionsList = [
    "Recharge",
    "Pay Bill",
    "LandLine",
    "Book Fiber",
    "Upgrade to 4G SIM",
    "Choose Your Number",
    "Do Not Disturb",
    "Games",
  ];

  List<Icon> quickActionsIcons = [
    Icon(Icons.payment, size: 30, color: Colors.black),
    Icon(Icons.receipt, size: 30, color: Colors.black),
    Icon(Icons.phone, size: 30, color: Colors.black),
    Icon(Icons.wifi, size: 30, color: Colors.black),
    Icon(Icons.sim_card, size: 30, color: Colors.black),
    Icon(Icons.numbers, size: 30, color: Colors.black),
    Icon(Icons.do_not_disturb, size: 30, color: Colors.black),
    Icon(Icons.videogame_asset, size: 30, color: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFA8214),
                Color(0xffF8A555),
                Color(0xffFCD8B4),
                Color(0xffF4F6F5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Afternoon, User",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    '1234567890',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "PrePaid",
                      style: TextStyle(color: Colors.orange),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(100, 15),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.notification_add, color: Colors.black),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.25,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_upward, size: 30),
                                Icon(Icons.arrow_downward, size: 30),
                              ],
                            ),
                          ),
                          Text(
                            '-',
                            style: TextStyle(color: Colors.red, fontSize: 30),
                          ),
                          Text(
                            '|',
                            style: TextStyle(fontSize: 50, color: Colors.grey),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('0 pack'),
                              Text(
                                'expired',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "ViewPack",
                            style: TextStyle(color: Colors.orange),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: Size(150, 30),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Recharge",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            fixedSize: Size(150, 15),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.error, color: Colors.red),
                  SizedBox(width: 5),
                  Text(
                    "Uh-oh! Your plan has expired. Recharge now.",
                    style: TextStyle(color: Colors.red),
                  ),
                  Spacer(),
                  Text('Recharge', style: TextStyle(color: Color(0xff84758C))),
                ],
              ),
              SizedBox(height: 18),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.all(15),
                height: MediaQuery.sizeOf(context).height * 0.4,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  boxShadow: [BoxShadow(color: Colors.grey)],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Actions',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                        ),
                        itemCount: quickActionsList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: quickActionsIcons[index],
                              ),
                              SizedBox(height: 5),
                              Text(
                                quickActionsList[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

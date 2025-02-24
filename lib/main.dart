import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RechargeScreen(),
    );
  }
}

class RechargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Good Afternoon, prasad tnvd"),
        actions: [Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your plan has expired",
                            style: TextStyle(color: Colors.red),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            child: Text("Recharge"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        "App Exclusive Offer",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text("Get 2% OFF on recharges above Rs 249."),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Quick Actions",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: [
                  quickActionTile(Icons.refresh, "Recharge"),
                  quickActionTile(Icons.payment, "Pay Bill"),
                  quickActionTile(Icons.phone, "Landline"),
                  quickActionTile(Icons.wifi, "Book Fiber"),
                  quickActionTile(Icons.sim_card, "Upgrade to 4G"),
                  quickActionTile(Icons.phone_android, "Choose Number"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget quickActionTile(IconData icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40, color: Colors.orange),
        SizedBox(height: 8),
        Text(title, textAlign: TextAlign.center),
      ],
    );
  }
}

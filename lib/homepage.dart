import 'package:flutter/material.dart';
import 'waterLimit.dart';
import 'usageHistory.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF7FFFD4), Color(0xFF40E0D0)],
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Water Usage Calculator',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    padding:const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child:const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter water tank volume (in liters)',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add your logic here to handle the button press
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    child:const Text('Save'),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to WaterLimitPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WaterLimitPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    child:const Text('Set water usage limit'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to UsageHistoryPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UsageHistoryPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    child:const Text('Water usage history'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Add your logic here to handle the button press
              },
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

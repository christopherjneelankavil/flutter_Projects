import 'package:flutter/material.dart';

class UsageHistoryPage extends StatelessWidget {
  final Map<String, double> _waterUsageHistory = {
    // ... existing data ...
    '2023-09-25': 200.0,
    '2023-09-24': 180.0,
    '2023-09-23': 150.0,
    '2023-09-22': 159.0,
    '2023-09-21': 150.0,
    '2023-09-20': 135.0,
    '2023-09-19': 146.3,
    '2023-09-18': 157.8,
    '2023-09-17': 151.0,
    '2023-09-16': 130.5,
    '2023-09-15': 120.0,
    '2023-09-14': 190.6,
    '2023-09-13': 154.9,
    '2023-09-12': 158.9,
    '2023-09-11': 165.7,
    '2023-09-10': 187.7,
    '2023-09-09': 134.9,
    '2023-09-08': 161.7,
    '2023-09-07': 177.8,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title:const Text('Water Usage History'),
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration:const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF7FFFD4), Color(0xFF40E0D0)],
                ),
              ),
            ),
            elevation: 0,
            floating: false,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration:const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF7FFFD4), Color(0xFF40E0D0)],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ..._waterUsageHistory.entries.map((entry) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.blue, width: 2.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date: ${entry.key}',
                              style:const TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Water Usage: ${entry.value} liters',
                              style:const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

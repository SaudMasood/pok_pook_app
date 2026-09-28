import 'package:flutter/material.dart';

import 'common.dart';
import 'home_screen.dart';
import 'create_ride_screen.dart';
import 'chats_screen.dart';
import 'profile_screen.dart';

class MyRidesScreen extends StatelessWidget {
  const MyRidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              height: 56,
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffE5ECE9),
                  ),
                ),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'My Rides',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textDark,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),

            // Statistics
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  smallStat(
                    'Total Rides',
                    '42',
                  ),
                  smallStat(
                    'Kilometers',
                    '840 km',
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  smallStat(
                    'Savings',
                    'Rs 12,400',
                  ),
                  smallStat(
                    'CO2 Saved',
                    '12 kg',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 4),

            // Ride Tabs
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              height: 34,
              decoration: BoxDecoration(
                color: lightGreen,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: Text(
                          'Active',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Completed',
                        style: TextStyle(
                          fontSize: 8,
                          color: textDark,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 7),

            // Ride List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                children: [
                  rideCard(
                    '5:45\npm',
                    'Tech Park F-8',
                    'Revers Heights',
                    '6.8 km',
                  ),
                  rideCard(
                    '6:45\npm',
                    'Blue Area',
                    'Revers Heights',
                    '6.8 km',
                  ),
                  rideCard(
                    '5:45\npm',
                    'G-10 Markaz',
                    'Revers Heights',
                    '6.8 km',
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: PakPoolBottomNav(
        selectedIndex: 1,
        onChanged: (index) {
          _openPage(
            context,
            index,
          );
        },
      ),
    );
  }

  Widget rideCard(
      String time,
      String from,
      String to,
      String distance,
      ) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 8,
      ),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xffDDE5E2),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Time
          Container(
            width: 42,
            padding: const EdgeInsets.symmetric(
              vertical: 7,
            ),
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              time,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 8,
                color: green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(width: 8),

          // Route
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 7,
                      color: green,
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        from,
                        style: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: textDark,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 9,
                      color: green,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        to,
                        style: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: textDark,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 7),

                const Text(
                  'Walking    •    10 mins    •    Recurring',
                  style: TextStyle(
                    fontSize: 6,
                    color: greyText,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 5),

          // Distance
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.end,
            children: [
              Text(
                distance,
                style: const TextStyle(
                  fontSize: 8,
                  color: green,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'View Details  ›',
                style: TextStyle(
                  fontSize: 7,
                  color: green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _openPage(
      BuildContext context,
      int index,
      ) {
    Widget? page;

    switch (index) {
      case 0:
        page = const HomeScreen();
        break;

      case 1:
        return;

      case 2:
        page = const CreateRideScreen();
        break;

      case 3:
        page = const ChatsScreen();
        break;

      case 4:
        page = const ProfileScreen();
        break;
    }

    if (page == null) {
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => page!,
      ),
    );
  }
}
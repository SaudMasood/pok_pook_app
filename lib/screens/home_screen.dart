import 'package:flutter/material.dart';

import 'common.dart';
import 'my_rides_screen.dart';
import 'create_ride_screen.dart';
import 'chats_screen.dart';
import 'profile_screen.dart';
import 'request_ride_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 52,
              color: lightGreen,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  const Icon(
                    Icons.menu,
                    size: 19,
                    color: textDark,
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Kainat 👋',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: textDark,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Ready to make a difference today?',
                        style: TextStyle(
                          fontSize: 6,
                          color: greyText,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      size: 19,
                      color: textDark,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Row(
                        children: [
                          CircleAvatar(
                            radius: 19,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.eco,
                              color: green,
                              size: 19,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Eco Points',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  'You’re doing Great!',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 6,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '320 Points',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.workspace_premium_outlined,
                            color: Colors.white,
                            size: 26,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        smallStat('CO2 Saved', '12.6 kg'),
                        smallStat('Fuel Saved', '8.4 L'),
                        smallStat('Distance', '145 km'),
                        smallStat('Active Rides', '4'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const RequestRideScreen(),
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        height: 44,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 19,
                            ),
                            SizedBox(width: 7),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Find Ride',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Search rides near you',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 6,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            CircleAvatar(
                              radius: 11,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_forward,
                                color: green,
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 13),
                    Row(
                      children: [
                        const Text(
                          'Active Rides',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: textDark,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const MyRidesScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'View All',
                            style: TextStyle(
                              fontSize: 7,
                              color: green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    ...List.generate(
                      4,
                      (index) => rideTile(index),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: PakPoolBottomNav(
        selectedIndex: 0,
        onChanged: (index) {
          _openPage(context, index);
        },
      ),
    );
  }

  Widget rideTile(int index) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: const Color(0xffE2E7E6),
        ),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 13,
            child: Icon(
              Icons.person,
              size: 14,
            ),
          ),
          const SizedBox(width: 7),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Office Commute',
                  style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                    color: textDark,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Tech Park F-8 → Blue Area',
                  style: TextStyle(
                    fontSize: 6,
                    color: greyText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 3,
            ),
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              'ongoing',
              style: TextStyle(
                fontSize: 5,
                color: green,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Icon(
            Icons.chevron_right,
            size: 15,
            color: greyText,
          ),
        ],
      ),
    );
  }

  void _openPage(BuildContext context, int index) {
    Widget? page;

    switch (index) {
      case 0:
        return;
      case 1:
        page = const MyRidesScreen();
        break;
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

import 'package:flutter/material.dart';

import 'common.dart';
import 'home_screen.dart';
import 'my_rides_screen.dart';
import 'create_ride_screen.dart';
import 'profile_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

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
                      'Chats',
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
                      Icons.edit_outlined,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),

            // Search
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffF7FAF9),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: const Color(0xffDCE3E2),
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 17,
                      color: greyText,
                    ),
                    SizedBox(width: 7),
                    Expanded(
                      child: Text(
                        'Search messages or users',
                        style: TextStyle(
                          fontSize: 8,
                          color: greyText,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Chat filters
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              height: 32,
              decoration: BoxDecoration(
                color: lightGreen,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius:
                        BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'All',
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
                        'Unread',
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

            // Empty state
            const Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.do_not_disturb_alt_outlined,
                      size: 48,
                      color: Color(0xffDDE3E3),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'No Chats Yet',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: textDark,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'No chats available.\n'
                          'Start a conversation after a ride.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 7,
                        color: greyText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: PakPoolBottomNav(
        selectedIndex: 3,
        onChanged: (index) {
          _openPage(
            context,
            index,
          );
        },
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
        page = const MyRidesScreen();
        break;

      case 2:
        page = const CreateRideScreen();
        break;

      case 3:
        return;

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
        builder: (_) {
          return page!;
        },
      ),
    );
  }
}
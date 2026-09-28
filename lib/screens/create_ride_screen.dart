import 'package:flutter/material.dart';

import 'common.dart';
import 'home_screen.dart';
import 'my_rides_screen.dart';
import 'chats_screen.dart';
import 'profile_screen.dart';

class CreateRideScreen extends StatefulWidget {
  const CreateRideScreen({super.key});

  @override
  State<CreateRideScreen> createState() {
    return _CreateRideScreenState();
  }
}

class _CreateRideScreenState extends State<CreateRideScreen> {
  String commute = 'One Way';
  int passengers = 1;

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
                      'Create a Ride',
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
                      Icons.save_outlined,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),

            // Form
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(
                  10,
                  10,
                  10,
                  8,
                ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    // Pickup
                    label('Pickup Location'),

                    locationField(
                      'Tech Park F-8',
                    ),

                    const SizedBox(height: 10),

                    // Drop
                    label('Drop Location'),

                    locationField(
                      'Blue Area',
                    ),

                    const SizedBox(height: 10),

                    // Commute
                    label(
                      'When do you commute?',
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: choiceButton(
                            'One Way',
                            commute == 'One Way',
                                () {
                              setState(() {
                                commute = 'One Way';
                              });
                            },
                          ),
                        ),

                        const SizedBox(width: 6),

                        Expanded(
                          child: choiceButton(
                            'Round Trip',
                            commute == 'Round Trip',
                                () {
                              setState(() {
                                commute = 'Round Trip';
                              });
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Time
                    Row(
                      children: [
                        Expanded(
                          child: dropdown(
                            'Departure Time',
                            '8:00 AM',
                          ),
                        ),

                        const SizedBox(width: 6),

                        Expanded(
                          child: dropdown(
                            'Return Time (Optional)',
                            '6:00 PM',
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Vehicle
                    label('Vehicle Type'),

                    dropdown(
                      '',
                      'Toyota Corolla',
                    ),

                    const SizedBox(height: 10),

                    // Passengers
                    label(
                      'Number Of Passengers',
                    ),

                    Row(
                      children: [
                        passengerButton(1),
                        passengerButton(2),
                        passengerButton(3),
                        passengerButton(4),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Price
                    label('Price'),

                    dropdown(
                      '',
                      'PKR 350',
                    ),

                    const SizedBox(height: 10),

                    // Notes
                    label(
                      'Notes (Optional)',
                    ),

                    notesField(
                      'Add any extra pickup instructions',
                    ),

                    const SizedBox(height: 15),

                    // Button
                    greenButton(
                      'Create Ride',
                      onPressed: () {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Ride created successfully',
                            ),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: PakPoolBottomNav(
        selectedIndex: 2,
        onChanged: (index) {
          _openPage(
            context,
            index,
          );
        },
      ),
    );
  }

  Widget label(String text) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 4,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.bold,
          color: textDark,
        ),
      ),
    );
  }

  Widget locationField(String value) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
      ),
      decoration: BoxDecoration(
        color: lightGreen,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color(0xffDCE3E2),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_outlined,
            size: 15,
            color: green,
          ),

          const SizedBox(width: 6),

          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 8,
                color: textDark,
              ),
            ),
          ),

          const Icon(
            Icons.gps_fixed,
            size: 14,
            color: green,
          ),
        ],
      ),
    );
  }

  Widget choiceButton(
      String text,
      bool active,
      VoidCallback onTap,
      ) {
    return SizedBox(
      height: 34,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor:
          active ? green : lightGreen,
          foregroundColor:
          active ? Colors.white : textDark,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget dropdown(
      String title,
      String value,
      ) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(
              bottom: 4,
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 7,
                color: greyText,
              ),
            ),
          ),

        Container(
          height: 34,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 9,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: const Color(0xffDCE3E2),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 8,
                    color: textDark,
                  ),
                ),
              ),

              const Icon(
                Icons.keyboard_arrow_down,
                size: 15,
                color: green,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget passengerButton(int number) {
    final bool active = passengers == number;

    return GestureDetector(
      onTap: () {
        setState(() {
          passengers = number;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 7,
        ),
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: active ? green : Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
            color: green,
          ),
        ),
        child: Center(
          child: Text(
            '$number',
            style: TextStyle(
              fontSize: 8,
              color: active
                  ? Colors.white
                  : textDark,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget notesField(String hint) {
    return Container(
      height: 58,
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: lightGreen,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color(0xffDCE3E2),
        ),
      ),
      child: Text(
        hint,
        style: const TextStyle(
          fontSize: 7,
          color: greyText,
        ),
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
        return;

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
        builder: (_) {
          return page!;
        },
      ),
    );
  }
}
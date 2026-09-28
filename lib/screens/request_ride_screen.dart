import 'package:flutter/material.dart';

import 'common.dart';

class RequestRideScreen extends StatefulWidget {
  const RequestRideScreen({super.key});

  @override
  State<RequestRideScreen> createState() => _RequestRideScreenState();
}

class _RequestRideScreenState extends State<RequestRideScreen> {
  bool regularRide = true;
  int passengerCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            settingsHeader(
              context,
              'Request a Ride',
            ),

            // Main Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    // Ride Type
                    Row(
                      children: [
                        Expanded(
                          child: tab(
                            'Regular',
                            regularRide,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: tab(
                            'One-Time',
                            !regularRide,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Route Details
                    sectionCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Route Details',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: textDark,
                            ),
                          ),

                          const SizedBox(height: 10),

                          routeBox(
                            'Pickup Location (e.g., G-11 Markaz)',
                            Icons.location_on_outlined,
                          ),

                          const SizedBox(height: 5),

                          routeBox(
                            'Drop Location (e.g., Blue Area)',
                            Icons.location_on_outlined,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Schedule
                    sectionCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Schedule',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: textDark,
                            ),
                          ),

                          const SizedBox(height: 10),

                          Row(
                            children: [
                              Expanded(
                                child: miniField(
                                  'Start Date',
                                  'mm/dd/yyyy',
                                ),
                              ),

                              const SizedBox(width: 8),

                              Expanded(
                                child: miniField(
                                  'Start Time',
                                  '--:--',
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'Recurrence (Days of Week)',
                            style: TextStyle(
                              fontSize: 7,
                              color: greyText,
                            ),
                          ),

                          const SizedBox(height: 6),

                          Wrap(
                            spacing: 5,
                            runSpacing: 5,
                            children: [
                              chip('Mon'),
                              chip('Tue'),
                              chip('Wed'),
                              chip('Thu'),
                              chip('Fri'),
                              chip('Sat'),
                              chip('Sun'),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Preferences & Price
                    sectionCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Preferences & Price',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: textDark,
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'Passenger Count',
                            style: TextStyle(
                              fontSize: 7,
                              color: greyText,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (passengerCount > 1) {
                                    setState(() {
                                      passengerCount--;
                                    });
                                  }
                                },
                                child: iconCircle(
                                  Icons.remove,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Text(
                                  '$passengerCount',
                                  style: const TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    passengerCount++;
                                  });
                                },
                                child: iconCircle(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'Price per Person (PKR)',
                            style: TextStyle(
                              fontSize: 7,
                              color: greyText,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Container(
                            width: double.infinity,
                            height: 38,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: lightGreen,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              'Rs. 350',
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                                color: textDark,
                              ),
                            ),
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'Notes for Driver',
                            style: TextStyle(
                              fontSize: 7,
                              color: greyText,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Container(
                            height: 55,
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: lightGreen,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Text(
                              'Any specific requirements or landmarks...',
                              style: TextStyle(
                                fontSize: 7,
                                color: greyText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Request Button
                    greenButton(
                      'Request Ride',
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Ride request submitted',
                            ),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 10),

                    // Map Preview
                    Container(
                      height: 135,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff174A48),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.map_outlined,
                          size: 70,
                          color: Colors.white70,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tab(
      String text,
      bool active,
      ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          regularRide = text == 'Regular';
        });
      },
      child: Container(
        height: 34,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: active ? green : lightGreen,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 8,
            color: active ? Colors.white : textDark,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget routeBox(
      String text,
      IconData icon,
      ) {
    return Container(
      height: 38,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: lightGreen,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 14,
            color: green,
          ),

          const SizedBox(width: 6),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 7,
                color: greyText,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget miniField(
      String title,
      String value,
      ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 7,
            color: greyText,
          ),
        ),

        const SizedBox(height: 4),

        Container(
          width: double.infinity,
          height: 32,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: lightGreen,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 7,
              color: greyText,
            ),
          ),
        ),
      ],
    );
  }

  Widget chip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF5F7F7),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xffE2EBE7),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 6,
          color: greyText,
        ),
      ),
    );
  }

  Widget iconCircle(
      IconData icon,
      ) {
    return Container(
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        color: lightGreen,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(
        icon,
        size: 14,
        color: green,
      ),
    );
  }
}
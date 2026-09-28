import 'package:flutter/material.dart';
import 'common.dart';

class VehicleInformationScreen extends StatelessWidget {
  const VehicleInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            settingsHeader(
              context,
              'Vehicle Information',
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Vehicle Header
                    Container(
                      height: 92,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff153D32),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          'Toyota Corolla Altis',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Core Specifications
                    sectionCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Core Specifications',
                            style: TextStyle(
                              fontSize: 9,
                              color: green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 7),

                          Row(
                            children: [
                              smallStat(
                                'MODEL YEAR',
                                '2022',
                              ),
                              smallStat(
                                'EXTERIOR COLOR',
                                'Glacier White',
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              smallStat(
                                'PLATE NUMBER',
                                'ABC-1234',
                              ),
                              smallStat(
                                'TOTAL SEATS',
                                '4 available',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Verification
                    sectionCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Verification',
                            style: TextStyle(
                              fontSize: 9,
                              color: green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          verify(
                            'Documents',
                            'Valid',
                          ),

                          verify(
                            'Insurance',
                            'Active',
                          ),

                          verify(
                            'Last Inspection',
                            'Oct 2023',
                          ),

                          const SizedBox(height: 8),

                          greenButton(
                            'View Documents',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Vehicle Features
                    sectionCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Vehicle Features',
                            style: TextStyle(
                              fontSize: 9,
                              color: green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 7),

                          Wrap(
                            spacing: 5,
                            runSpacing: 5,
                            children: [
                              feature('Climate Control'),
                              feature('On-board Wi-Fi'),
                              feature('Charging Ports'),
                              feature('Smoke Free'),
                              feature('Premium Audio'),
                              feature('Child Lock'),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Driver's Notes
                    infoCard(
                      'Driver’s Notes',
                      'This vehicle is maintained at authorized dealerships '
                          'every 5,000 km. It is clean, quiet, and perfect for '
                          'long office commutes.',
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

  Widget verify(
      String title,
      String value,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 8,
                color: greyText,
              ),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 8,
              color: green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget feature(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: lightGreen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 7,
          color: textDark,
        ),
      ),
    );
  }
}
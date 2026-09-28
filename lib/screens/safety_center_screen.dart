import 'package:flutter/material.dart';
import 'common.dart';

class SafetyCenterScreen extends StatelessWidget {
  const SafetyCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            settingsHeader(
              context,
              'Safety Center',
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    // Emergency Help
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xffffdddd),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Emergency Help',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          const Text(
                            'Instantly alert local emergency services and '
                                'the PakPool safety team about your current ride.',
                            style: TextStyle(
                              fontSize: 7,
                              color: greyText,
                            ),
                          ),

                          const SizedBox(height: 8),

                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            child: const Text(
                              'SOS CALL EMERGENCY',
                              style: TextStyle(
                                fontSize: 7,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 9),

                    // Share Trip
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Share Trip',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            'Let friends or family track your journey '
                                'in real-time.',
                            style: TextStyle(
                              fontSize: 7,
                              color: Colors.white,
                            ),
                          ),

                          SizedBox(height: 7),

                          Text(
                            '👤 👤 +2',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Safety Toolkit Title
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'SAFETY TOOLKIT',
                        style: TextStyle(
                          fontSize: 6,
                          color: greyText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 6),

                    // Safety Toolkit
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      childAspectRatio: 2.2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      children: [
                        infoCard(
                          'Report User',
                          'Report unsafe behavior.',
                          icon: Icons.flag_outlined,
                        ),

                        infoCard(
                          'Block User',
                          'Prevent future contact.',
                          icon: Icons.block,
                        ),

                        infoCard(
                          'Safety Contacts',
                          'Manage your circle.',
                          icon: Icons.people_outline,
                        ),

                        infoCard(
                          'Guidelines',
                          'Community standards.',
                          icon: Icons.menu_book_outlined,
                        ),
                      ],
                    ),

                    // Ride Safety Checklist
                    infoCard(
                      'Ride Safety Checklist',
                      '✓ Verify car plate number matches the app\n'
                          '✓ Confirm the driver’s name and photo\n'
                          '✓ Always share your live trip status',
                      icon: Icons.check_circle_outline,
                    ),

                    // Verified Community
                    infoCard(
                      'Verified Community',
                      'Over 50,000 rides successfully completed with '
                          'zero safety incidents this month.',
                      icon: Icons.verified_outlined,
                    ),

                    const SizedBox(height: 5),

                    // Contact Support
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'Contact Support',
                        style: TextStyle(
                          fontSize: 8,
                          color: green,
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
}
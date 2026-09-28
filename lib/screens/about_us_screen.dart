import 'package:flutter/material.dart';
import 'common.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
      body: SafeArea(
        child: Column(
          children: [
            settingsHeader(context, 'About Us'),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Header Image / Banner
                    Container(
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff102A21),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Connecting Communities',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Mission
                    infoCard(
                      'Our Mission',
                      'To make commuting affordable, safe, and social for every Pakistani. '
                          'We aim to reduce traffic congestion and carbon footprints by maximizing '
                          'the utility of private vehicles on our roads.',
                      icon: Icons.rocket_launch_outlined,
                    ),

                    // Vision
                    infoCard(
                      'Our Vision',
                      'To become the primary mode of inter-city and intra-city travel, fostering '
                          'a culture of shared mobility and community trust across Pakistan’s '
                          'diverse landscape.',
                      icon: Icons.visibility_outlined,
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      'Our Core Values',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: textDark,
                      ),
                    ),

                    const SizedBox(height: 7),

                    // Safety
                    infoCard(
                      'Safety First',
                      'Every driver and passenger is verified to ensure a secure environment '
                          'for all users.',
                      icon: Icons.verified_user_outlined,
                    ),

                    // Community
                    infoCard(
                      'Community',
                      'Building bonds through shared journeys.',
                      icon: Icons.groups_outlined,
                    ),

                    // Sustainability
                    infoCard(
                      'Sustainability',
                      'Reducing emissions together.',
                      icon: Icons.eco_outlined,
                    ),

                    // Economy
                    infoCard(
                      'Economy',
                      'Making travel accessible for all.',
                      icon: Icons.savings_outlined,
                    ),

                    // Join Community
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xff007A5A),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ready to Join the Community?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            'Start saving on your daily commute while meeting great people.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            'Join PakPool',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Copyright
                    const Center(
                      child: Text(
                        '© 2024 PakPool Technologies PVT Ltd. All rights reserved.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 6,
                          color: greyText,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Footer links
                    const Center(
                      child: Text(
                        'Privacy Policy     Terms of Service     Contact Support',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 7,
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
import 'package:flutter/material.dart';
import 'common.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            settingsHeader(
              context,
              'Privacy Policy',
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Last Updated
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Last Updated: June 15, 2024',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 6,
                        ),
                      ),
                    ),

                    const SizedBox(height: 7),

                    // Title
                    const Text(
                      'Your Privacy at PakPool',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      'We value your trust and are committed to protecting '
                          'your personal information.',
                      style: TextStyle(
                        fontSize: 7,
                        color: greyText,
                        height: 1.4,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Information We Collect
                    infoCard(
                      '1. Information We Collect',
                      'Account Information: Name, phone number, email address, '
                          'and profile picture.\n'
                          'Verification Data: CNIC details for verification and '
                          'driving licence information.\n'
                          'Location Data: Real-time GPS data during active rides '
                          'to facilitate pickup and drop-offs.',
                      icon: Icons.storage_outlined,
                    ),

                    // How We Use Data
                    infoCard(
                      '2. How We Use Data',
                      'Your data is primarily used to facilitate the carpooling '
                          'service. Specific uses include:\n\n'
                          'Ride Matching — Connecting passengers with drivers.\n\n'
                          'Safety Protocols — Enabling SOS features and real-time '
                          'ride tracking for trusted contacts.',
                      icon: Icons.privacy_tip_outlined,
                    ),

                    // Data Sharing
                    infoCard(
                      '3. Data Sharing',
                      'We do not sell your personal data to advertisers. '
                          'Sharing occurs only under required circumstances, '
                          'including legal requirements.',
                      icon: Icons.share_outlined,
                    ),

                    // Contact Support
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Need more clarity?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 5),

                          Text(
                            'Our dedicated privacy team is here to answer '
                                'any specific questions you may have about your '
                                'data rights.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                            ),
                          ),

                          SizedBox(height: 7),

                          Text(
                            'Contact Support',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
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
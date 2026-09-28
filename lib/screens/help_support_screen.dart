import 'package:flutter/material.dart';
import 'common.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            settingsHeader(
              context,
              'Help & Support',
            ),

            // Screen content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text(
                      'How can we help you today?',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      'Search our help center or contact our support team '
                          'directly for any assistance with your rides.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 7,
                        color: greyText,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Banner
                    Container(
                      height: 105,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff2F9D91),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.laptop_mac,
                          color: Colors.white,
                          size: 55,
                        ),
                      ),
                    ),

                    const SizedBox(height: 7),

                    // Search
                    fieldBox(
                      'Search FAQ, topics, or issues...',
                      icon: Icons.search,
                    ),

                    const SizedBox(height: 12),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Popular Topics',
                        style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 6),

                    // Popular Topics
                    infoCard(
                      'Browse FAQ',
                      'Find instant answers to the most commonly asked questions.\n\n'
                          'View all →',
                      icon: Icons.help_outline,
                    ),

                    infoCard(
                      'Report an Issue',
                      'Something went wrong with a ride? Let us know right away.\n\n'
                          'File report →',
                      icon: Icons.report_problem_outlined,
                    ),

                    infoCard(
                      'Payment & Refunds',
                      'Issues with transactions or curious about PakPool wallet.\n\n'
                          'Learn more →',
                      icon: Icons.payment_outlined,
                    ),

                    infoCard(
                      'Account & Privacy',
                      'Manage your profile, verification, and data privacy.\n\n'
                          'Manage →',
                      icon: Icons.manage_accounts_outlined,
                    ),

                    const SizedBox(height: 5),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Get in Touch',
                        style: TextStyle(
                          fontSize: 7,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 6),

                    // Contact options
                    infoCard(
                      'Live Chat',
                      'Our support ninjas are online and ready to help.\n\n'
                          'Start Live Chat',
                      icon: Icons.headset_mic_outlined,
                    ),

                    infoCard(
                      'Email Us',
                      'Typically replies within 24 hours.\n\n'
                          'support@pakpool.pk',
                      icon: Icons.email_outlined,
                    ),

                    infoCard(
                      'Emergency Call',
                      'Available 24/7 for safety issues.\n\n'
                          '+92 300 123 4567',
                      icon: Icons.phone_outlined,
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
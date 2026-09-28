import 'package:flutter/material.dart';
import 'common.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool ride = true;
  bool messages = true;
  bool promotions = false;
  bool updates = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            settingsHeader(
              context,
              'Notifications',
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    // Header Banner
                    Container(
                      height: 88,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff102A21),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          'Stay Connected\n'
                              'Customize how and when you hear from PakPool.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Ride Alerts
                    settingsRow(
                      'Ride Alerts',
                      'Arrivals, cancellations, and status changes.',
                      icon: Icons.directions_car,
                      trailing: Switch(
                        value: ride,
                        onChanged: (value) {
                          setState(() {
                            ride = value;
                          });
                        },
                      ),
                    ),

                    // Messages
                    settingsRow(
                      'Messages',
                      'Direct chats from co-riders and drivers.',
                      icon: Icons.chat_outlined,
                      trailing: Switch(
                        value: messages,
                        onChanged: (value) {
                          setState(() {
                            messages = value;
                          });
                        },
                      ),
                    ),

                    const SizedBox(height: 8),

                    // General Settings
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'General Settings',
                        style: TextStyle(
                          fontSize: 7,
                          color: green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),

                    // Promotions
                    settingsRow(
                      'Promotions',
                      'Exclusive offers and seasonal discounts.',
                      icon: Icons.local_offer_outlined,
                      trailing: Switch(
                        value: promotions,
                        onChanged: (value) {
                          setState(() {
                            promotions = value;
                          });
                        },
                      ),
                    ),

                    // App Updates
                    settingsRow(
                      'App Updates',
                      'News about new features and optimizations.',
                      icon: Icons.system_update_outlined,
                      trailing: Switch(
                        value: updates,
                        onChanged: (value) {
                          setState(() {
                            updates = value;
                          });
                        },
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Focus Mode
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xff005B42),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Focus Mode',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            'Mute all non-critical alerts during your commute hours.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                            ),
                          ),

                          SizedBox(height: 7),

                          Text(
                            'Configure Focus',
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
import 'package:flutter/material.dart';

import 'common.dart';
import 'home_screen.dart';
import 'my_rides_screen.dart';
import 'create_ride_screen.dart';
import 'chats_screen.dart';
import 'edit_profile_screen.dart';
import 'vehicle_information_screen.dart';
import 'driver_registration_screen.dart';
import 'saved_places_screen.dart';
import 'safety_center_screen.dart';
import 'notification_settings_screen.dart';
import 'privacy_policy_screen.dart';
import 'terms_conditions_screen.dart';
import 'faqs_screen.dart';
import 'help_support_screen.dart';
import 'about_us_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'title': 'Edit Profile',
        'icon': Icons.edit_outlined,
        'page': const EditProfileScreen(),
      },
      {
        'title': 'Vehicle Info (Driver)',
        'icon': Icons.directions_car_outlined,
        'page': const VehicleInformationScreen(),
      },
      {
        'title': 'Driver Registration',
        'icon': Icons.verified_user_outlined,
        'page': const DriverRegistrationScreen(),
      },
      {
        'title': 'Saved Places',
        'icon': Icons.location_on_outlined,
        'page': const SavedPlacesScreen(),
      },
      {
        'title': 'Safety Center',
        'icon': Icons.shield_outlined,
        'page': const SafetyCenterScreen(),
      },
      {
        'title': 'Notification Settings',
        'icon': Icons.notifications_none,
        'page': const NotificationSettingsScreen(),
      },
      {
        'title': 'Privacy Policy',
        'icon': Icons.description_outlined,
        'page': const PrivacyPolicyScreen(),
      },
      {
        'title': 'Terms & Conditions',
        'icon': Icons.article_outlined,
        'page': const TermsConditionsScreen(),
      },
      {
        'title': 'FAQs',
        'icon': Icons.help_outline,
        'page': const FaqsScreen(),
      },
      {
        'title': 'Help & Support',
        'icon': Icons.support_agent_outlined,
        'page': const HelpSupportScreen(),
      },
      {
        'title': 'About Us',
        'icon': Icons.info_outline,
        'page': const AboutUsScreen(),
      },
    ];

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
                      'Profile',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: textDark,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                          const NotificationSettingsScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.notifications_none,
                    ),
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    // Profile Card
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person,
                              size: 28,
                              color: greyText,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ahmed Hassan',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  'Ride Member',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '4.8 ★     (128 reviews)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 7,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Statistics
                    Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xffE0E5E4),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Center(
                              child: Text(
                                '6\nTrips',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                '0.0 KG\nCO₂ saved',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                '320 KM\nDistance',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Profile Settings
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color(0xffDDE4E2),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        children: [
                          for (final item in items)
                            settingsRow(
                              item['title'] as String,
                              '',
                              icon: item['icon'] as IconData,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                    item['page'] as Widget,
                                  ),
                                );
                              },
                            ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Switch Mode
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: green,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(6),
                          ),
                        ),
                        child: const Text(
                          'Switch to Passenger Mode',
                          style: TextStyle(
                            fontSize: 8,
                            color: green,
                            fontWeight: FontWeight.w600,
                          ),
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

      // Bottom Navigation
      bottomNavigationBar: PakPoolBottomNav(
        selectedIndex: 4,
        onChanged: (index) {
          _openBottomPage(
            context,
            index,
          );
        },
      ),
    );
  }

  void _openBottomPage(
      BuildContext context,
      int index,
      ) {
    Widget page;

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
        page = const ChatsScreen();
        break;

      case 4:
        return;

      default:
        return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => page,
      ),
    );
  }
}
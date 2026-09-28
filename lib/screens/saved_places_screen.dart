import 'package:flutter/material.dart';
import 'common.dart';

class SavedPlacesScreen extends StatelessWidget {
  const SavedPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            settingsHeader(
              context,
              'Saved Places',
            ),

            // Search
            Padding(
              padding: const EdgeInsets.all(10),
              child: fieldBox(
                'Search for a new place to save...',
                icon: Icons.search,
              ),
            ),

            // Saved Places List
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                children: [
                  // Primary Locations
                  const Text(
                    'PRIMARY LOCATIONS',
                    style: TextStyle(
                      fontSize: 6,
                      color: greyText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  settingsRow(
                    'Home',
                    'House 42, Street 15, Sector F-11/2, Islamabad, Pakistan',
                    icon: Icons.home,
                  ),

                  settingsRow(
                    'University',
                    'NUST Main Campus, Scholars Avenue, H-12, Islamabad',
                    icon: Icons.school,
                  ),

                  const SizedBox(height: 6),

                  // Other Places
                  const Text(
                    'OTHER PLACES',
                    style: TextStyle(
                      fontSize: 6,
                      color: greyText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  settingsRow(
                    'Giga Mall',
                    'DHA Phase 2, Islamabad',
                    icon: Icons.location_on,
                  ),

                  settingsRow(
                    'The Fitness Zone',
                    'Civic Centre, Bahria Phase 4, Rawalpindi',
                    icon: Icons.fitness_center,
                  ),

                  settingsRow(
                    'Savour Foods',
                    'Blue Area, Jinnah Avenue, Islamabad',
                    icon: Icons.restaurant,
                  ),

                  const SizedBox(height: 5),

                  // Add New Place
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xffF7FAF9),
                      border: Border.all(
                        color: const Color(0xffDDE8E4),
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                      child: Text(
                        '+  Add a new saved place',
                        style: TextStyle(
                          fontSize: 7,
                          color: green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
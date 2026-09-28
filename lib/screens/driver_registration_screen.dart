import 'package:flutter/material.dart';

import 'common.dart';

class DriverRegistrationScreen extends StatelessWidget {
  const DriverRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            settingsHeader(
              context,
              'Driver Registration',
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Personal Information
                    sectionCard(
                      child: Row(
                        children: [
                          Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              color: lightGreen,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.person_outline,
                              color: green,
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Personal Information',
                            style: TextStyle(
                              fontSize: 10,
                              color: textDark,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    profileField(
                      'Full Name',
                      'Enter your full name',
                    ),

                    const SizedBox(height: 8),

                    profileField(
                      'Phone Number',
                      '+92 300 1234567',
                    ),

                    const SizedBox(height: 8),

                    profileField(
                      'Email Address',
                      'name@example.com',
                    ),

                    const SizedBox(height: 8),

                    profileField(
                      'Gender',
                      'Select Gender',
                      icon: Icons.keyboard_arrow_down,
                    ),

                    const SizedBox(height: 12),

                    // Vehicle Information
                    sectionCard(
                      child: Row(
                        children: [
                          Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              color: lightGreen,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.directions_car_outlined,
                              color: green,
                              size: 18,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Vehicle Information',
                            style: TextStyle(
                              fontSize: 10,
                              color: textDark,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    profileField(
                      'Vehicle Name / Model',
                      'e.g. Honda Civic 2022',
                    ),

                    const SizedBox(height: 8),

                    profileField(
                      'Vehicle Color',
                      'e.g. Metallic Silver',
                    ),

                    const SizedBox(height: 8),

                    profileField(
                      'License Plate Number',
                      'ABC-1234',
                    ),

                    const SizedBox(height: 8),

                    profileField(
                      'Seating Capacity',
                      '4',
                    ),

                    const SizedBox(height: 12),

                    // Upload Vehicle Photo
                    const Text(
                      'Vehicle Photo',
                      style: TextStyle(
                        fontSize: 8,
                        color: textDark,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Container(
                      height: 90,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: lightGreen,
                        border: Border.all(
                          color: const Color(0xffBCD8CD),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cloud_upload_outlined,
                            color: green,
                            size: 24,
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Click or drag to upload vehicle photo',
                            style: TextStyle(
                              fontSize: 7,
                              color: greyText,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'JPG, PNG up to 5MB',
                            style: TextStyle(
                              fontSize: 6,
                              color: greyText,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 14),

                    // Button
                    greenButton(
                      'Save & Continue',
                      onPressed: () {
                        Navigator.pop(context);
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
    );
  }

  Widget profileField(
      String label,
      String value, {
        IconData? icon,
      }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 8,
            color: textDark,
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 4),

        Container(
          height: 40,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffF7FAF9),
            border: Border.all(
              color: const Color(0xffDDE5E2),
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 8,
                    color: greyText,
                  ),
                ),
              ),

              if (icon != null)
                Icon(
                  icon,
                  size: 17,
                  color: greyText,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
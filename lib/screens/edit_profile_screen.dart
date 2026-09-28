import 'package:flutter/material.dart';

import 'common.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() {
    return _EditProfileScreenState();
  }
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            settingsHeader(
              context,
              'Edit Profile',
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    // Profile Image
                    const CircleAvatar(
                      radius: 28,
                      backgroundColor: lightGreen,
                      child: Icon(
                        Icons.person,
                        size: 35,
                        color: greyText,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // Full Name
                    profileField(
                      label: 'Full Name',
                      value: 'Ahmed Hassan',
                    ),

                    const SizedBox(height: 9),

                    // Email
                    profileField(
                      label: 'Email Address',
                      value: 'ahmed.hassan@example.pk',
                      icon: Icons.email_outlined,
                    ),

                    const SizedBox(height: 9),

                    // Phone
                    Row(
                      children: [
                        SizedBox(
                          width: 52,
                          child: profileField(
                            label: '',
                            value: '+92',
                          ),
                        ),

                        const SizedBox(width: 5),

                        Expanded(
                          child: profileField(
                            label: '',
                            value: '300 1234567',
                            icon: Icons.phone_outlined,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Gender Title
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Gender',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: textDark,
                        ),
                      ),
                    ),

                    const SizedBox(height: 5),

                    // Gender
                    Row(
                      children: [
                        Expanded(
                          child: gender(
                            'Male',
                            Icons.male,
                          ),
                        ),

                        const SizedBox(width: 5),

                        Expanded(
                          child: gender(
                            'Female',
                            Icons.female,
                          ),
                        ),

                        const SizedBox(width: 5),

                        Expanded(
                          child: gender(
                            'Other',
                            Icons.people_outline,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    // Save
                    greenButton(
                      'Save Changes',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Last updated: 12 Oct 2023',
                      style: TextStyle(
                        fontSize: 6,
                        color: greyText,
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

  Widget profileField({
    required String label,
    required String value,
    IconData? icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty) ...[
          Text(
            label,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w600,
              color: textDark,
            ),
          ),
          const SizedBox(height: 4),
        ],

        Container(
          height: 42,
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
              if (icon != null) ...[
                Icon(
                  icon,
                  size: 16,
                  color: greyText,
                ),
                const SizedBox(width: 7),
              ],

              Expanded(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 9,
                    color: textDark,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget gender(
      String text,
      IconData icon,
      ) {
    final bool active = selectedGender == text;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGender = text;
        });
      },
      child: Container(
        height: 42,
        decoration: BoxDecoration(
          color: active ? green : Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: active
                ? green
                : const Color(0xffDCE3E2),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 14,
              color: active ? Colors.white : textDark,
            ),

            const SizedBox(height: 2),

            Text(
              text,
              style: TextStyle(
                fontSize: 7,
                color: active ? Colors.white : textDark,
                fontWeight: active
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'common.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({super.key});

  @override
  State<TermsConditionsScreen> createState() =>
      _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {
  bool agreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            settingsHeader(
              context,
              'Terms & Conditions',
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Privacy & Safety Banner
                    Container(
                      height: 85,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff193B2F),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Center(
                        child: Text(
                          'Our Commitment to Your Privacy & Safety',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Last Updated
                    const Text(
                      'Last Updated: October 24, 2023',
                      style: TextStyle(
                        fontSize: 6,
                        color: greyText,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Trust & Safety
                    infoCard(
                      'Trust & Safety',
                      'Verified profiles and community ratings are the '
                          'backbone of PakPool. Safety is our top priority.',
                      icon: Icons.verified_user_outlined,
                    ),

                    // Fair Pricing
                    infoCard(
                      'Fair Pricing',
                      'Cost sharing is strictly for travel expenses. '
                          'Commercial profit-making is prohibited under '
                          'carpooling rules.',
                      icon: Icons.attach_money,
                    ),

                    // Acceptance of Terms
                    infoCard(
                      '1. Acceptance of Terms',
                      'By downloading, installing, or using the PakPool '
                          'application, you agree to be bound by these Terms '
                          'and Conditions. If you do not agree, please '
                          'discontinue use immediately.',
                      icon: Icons.gavel_outlined,
                    ),

                    // User Eligibility & Conduct
                    infoCard(
                      '2. User Eligibility & Conduct',
                      'Users must provide accurate and truthful information '
                          'during registration. Respectful behavior towards '
                          'other community members is mandatory. Harassment, '
                          'discrimination, or unsafe driving practices will lead '
                          'to immediate account suspension.',
                      icon: Icons.people_outline,
                    ),

                    // Ride Cost Sharing
                    infoCard(
                      '3. Ride Cost Sharing',
                      'PakPool is a cost-sharing community. Drivers are not '
                          'permitted to operate for commercial profit.',
                      icon: Icons.payments_outlined,
                    ),

                    // Liability & Insurance
                    infoCard(
                      '4. Liability & Insurance',
                      'PakPool acts solely as a facilitator and does not '
                          'own any vehicles. Drivers must maintain valid '
                          'third-party insurance required by Pakistan law.',
                      icon: Icons.shield_outlined,
                    ),

                    const SizedBox(height: 5),

                    // Agreement Checkbox
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: agreed,
                          onChanged: (value) {
                            setState(() {
                              agreed = value ?? false;
                            });
                          },
                        ),

                        const Expanded(
                          child: Text(
                            'I have read and agree to the terms',
                            style: TextStyle(
                              fontSize: 7,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),

                    // Accept Button
                    greenButton(
                      'Accept & Continue',
                      onPressed: agreed
                          ? () {
                        Navigator.pop(context);
                      }
                          : null,
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
import 'package:flutter/material.dart';
import 'common.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({super.key});

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  final List<String> questions = [
    'How do I verify my profile on PakPool?',
    'Can I cancel a ride I’ve already booked?',
    'Is PakPool available outside of major cities?',
    'How are payments handled?',
  ];

  int open = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            settingsHeader(context, 'FAQs'),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text(
                      'How can we help?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      'Find answers to frequently asked questions about '
                          'PakPool’s carpooling community and platform.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 7,
                        color: greyText,
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Search
                    fieldBox(
                      'Search for topics (e.g., "Verification")',
                      icon: Icons.search,
                    ),

                    const SizedBox(height: 10),

                    // Categories
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      childAspectRatio: 1.9,
                      children: const [
                        CategoryItem(
                          icon: Icons.account_circle_outlined,
                          text: 'Account',
                        ),
                        CategoryItem(
                          icon: Icons.payment_outlined,
                          text: 'Payments',
                        ),
                        CategoryItem(
                          icon: Icons.shield_outlined,
                          text: 'Safety',
                        ),
                        CategoryItem(
                          icon: Icons.directions_car_outlined,
                          text: 'Rides',
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // FAQ Questions
                    for (int i = 0; i < questions.length; i++)
                      faqItem(i),

                    const SizedBox(height: 5),

                    // Support Card
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            'Still have questions?',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            'Our support team is available 24/7 '
                                'to help you with any issues.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 7,
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            'Chat with Us',
                            style: TextStyle(
                              fontSize: 8,
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

  // FAQ Item
  Widget faqItem(int index) {
    final bool selected = open == index;

    return InkWell(
      onTap: () {
        setState(() {
          if (selected) {
            open = -1;
          } else {
            open = index;
          }
        });
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffE0E6E4),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    questions[index],
                    style: const TextStyle(
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Icon(
                  selected
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  size: 13,
                ),
              ],
            ),

            if (selected) ...[
              const SizedBox(height: 7),

              const Text(
                'To ensure the safety of our community, '
                    'verification requires a valid CNIC and a clear profile photo. '
                    'Go to Profile > Settings > Verification to upload your documents. '
                    'Our team typically reviews submissions within 24-48 hours.',
                style: TextStyle(
                  fontSize: 7,
                  color: greyText,
                  height: 1.4,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}


// Category Item
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightGreen,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: green,
            size: 18,
          ),

          const SizedBox(height: 3),

          Text(
            text,
            style: const TextStyle(
              fontSize: 7,
            ),
          ),
        ],
      ),
    );
  }
}
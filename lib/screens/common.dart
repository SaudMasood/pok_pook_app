import 'package:flutter/material.dart';

const Color green = Color(0xff08B982);
const Color darkGreen = Color(0xff193B2F);
const Color lightGreen = Color(0xffEAF8F3);
const Color textDark = Color(0xff263238);
const Color greyText = Color(0xff7B878C);

Widget settingsHeader(
    BuildContext context,
    String title,
    ) {
  return Container(
    height: 56,
    padding: const EdgeInsets.symmetric(horizontal: 8),
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
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 20,
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: textDark,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget fieldBox(
    String hint, {
      IconData? icon,
    }) {
  return Container(
    height: 44,
    padding: const EdgeInsets.symmetric(
      horizontal: 12,
    ),
    decoration: BoxDecoration(
      color: const Color(0xffF7FAF9),
      border: Border.all(
        color: const Color(0xffDDE8E4),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        if (icon != null) ...[
          Icon(
            icon,
            size: 18,
            color: greyText,
          ),
          const SizedBox(width: 8),
        ],
        Expanded(
          child: Text(
            hint,
            style: const TextStyle(
              fontSize: 11,
              color: greyText,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget settingsRow(
    String title,
    String subtitle, {
      IconData? icon,
      VoidCallback? onTap,
      Widget? trailing,
    }) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(8),
    child: Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 7,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffE2EBE7),
        ),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: lightGreen,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: green,
                size: 18,
              ),
            ),
            const SizedBox(width: 10),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: textDark,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 9,
                    color: greyText,
                    height: 1.25,
                  ),
                ),
              ],
            ),
          ),
          if (trailing != null) trailing,
        ],
      ),
    ),
  );
}

Widget infoCard(
    String title,
    String body, {
      IconData? icon,
    }) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(
      bottom: 8,
    ),
    padding: const EdgeInsets.all(11),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: const Color(0xffE2EBE7),
      ),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (icon != null) ...[
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: green,
              size: 17,
            ),
          ),
          const SizedBox(width: 9),
        ],
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: textDark,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                body,
                style: const TextStyle(
                  fontSize: 9,
                  color: greyText,
                  height: 1.35,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget greenButton(
    String text, {
      VoidCallback? onPressed,
    }) {
  return SizedBox(
    width: double.infinity,
    height: 46,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: green,
        foregroundColor: Colors.white,
        disabledBackgroundColor: const Color(0xffD9E5E1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 0,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}

Widget sectionCard({
  required Widget child,
}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(11),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: const Color(0xffE2EBE7),
      ),
    ),
    child: child,
  );
}

Widget smallStat(
    String title,
    String value,
    ) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(
        right: 8,
        bottom: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 6,
              color: greyText,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            value,
            style: const TextStyle(
              fontSize: 8,
              color: textDark,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

class PakPoolBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const PakPoolBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 68,
      selectedIndex: selectedIndex,
      onDestinationSelected: onChanged,
      indicatorColor: lightGreen,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.directions_car_outlined),
          selectedIcon: Icon(Icons.directions_car),
          label: 'My Rides',
        ),
        NavigationDestination(
          icon: Icon(Icons.add_circle_outline),
          selectedIcon: Icon(Icons.add_circle),
          label: 'Create',
        ),
        NavigationDestination(
          icon: Icon(Icons.chat_bubble_outline),
          selectedIcon: Icon(Icons.chat_bubble),
          label: 'Chats',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
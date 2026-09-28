import 'package:flutter/material.dart';
import 'login_screen.dart';

class AccountConfirmationScreen extends StatefulWidget {
  const AccountConfirmationScreen({super.key});

  @override
  State<AccountConfirmationScreen> createState() =>
      _AccountConfirmationScreenState();
}

class _AccountConfirmationScreenState
    extends State<AccountConfirmationScreen> {
  final List<TextEditingController> codeControllers = List.generate(
    5,
    (_) => TextEditingController(),
  );

  @override
  void dispose() {
    for (final controller in codeControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 70, 24, 30),
            child: Column(
              children: [
                Image.asset(
                  'assets/account_confirmation.png',
                  height: 120,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 14),
                const Text(
                  'Account Confirmation',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff08B982),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Enter The Code Sent The Mobile Number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 8,
                    color: Color(0xffB1B9BE),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  '+92 ************',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xff62D1B0),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => _codeBox(index),
                  ),
                ),
                const SizedBox(height: 45),
                _button(
                  'Send',
                  () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                      (route) => false,
                    );
                  },
                ),
                const SizedBox(height: 20),
                const Text(
                  'resend code within 00:30',
                  style: TextStyle(
                    fontSize: 8,
                    color: Color(0xffAEB7BC),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _codeBox(int index) {
    return Container(
      width: 38,
      height: 38,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      child: TextField(
        controller: codeControllers[index],
        textAlign: TextAlign.center,
        maxLength: 1,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 14),
        onChanged: (value) {
          if (value.isNotEmpty && index < 4) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Color(0xffD9DEDF)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Color(0xffD9DEDF)),
          ),
        ),
      ),
    );
  }

  Widget _button(String text, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 34,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff08B982),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

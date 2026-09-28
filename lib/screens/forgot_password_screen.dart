import 'package:flutter/material.dart';
import 'account_confirmation_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final mobileController = TextEditingController();

  @override
  void dispose() {
    mobileController.dispose();
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
                  'assets/forgot_password.png',
                  height: 125,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Forget Password',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff08B982),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Enter The Mobile, To Be Able To Enter\nThe Application',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 8,
                    color: Color(0xffB1B9BE),
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 35),
                Align(
                  alignment: Alignment.centerLeft,
                  child: _label('Mobile Number'),
                ),
                const SizedBox(height: 6),
                _mobileField(),
                const SizedBox(height: 35),
                _button(
                  'Send',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AccountConfirmationScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _label(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
        color: Color(0xff08B982),
      ),
    );
  }

  Widget _mobileField() {
    return SizedBox(
      height: 38,
      child: TextField(
        controller: mobileController,
        keyboardType: TextInputType.phone,
        style: const TextStyle(fontSize: 10),
        decoration: InputDecoration(
          hintText: '+92  ************',
          hintStyle: const TextStyle(
            fontSize: 10,
            color: Color(0xffD2D7DA),
          ),
          prefixText: '+92  ',
          prefixStyle: const TextStyle(
            fontSize: 10,
            color: Color(0xff08B982),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Color(0xffD9DEDF)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
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

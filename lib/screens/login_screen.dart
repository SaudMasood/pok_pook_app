import 'package:flutter/material.dart';

import 'common.dart';
import 'forgot_password_screen.dart';
import 'home_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool obscurePassword = true;

  void login() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const HomeScreen();
        },
      ),
      (route) {
        return false;
      },
    );
  }

  void openForgotPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const ForgotPasswordScreen();
        },
      ),
    );
  }

  void openSignup() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const SignupScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: 76,
                  height: 76,
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: textDark,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Log in to continue your PakPool journey.',
                style: TextStyle(
                  fontSize: 11,
                  color: greyText,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Email or Phone',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Enter email or phone',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              TextField(
                obscureText: obscurePassword,
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    },
                    icon: Icon(
                      obscurePassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value ?? false;
                      });
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: openForgotPassword,
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 10,
                        color: green,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              greenButton(
                'Login',
                onPressed: login,
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 10,
                      color: greyText,
                    ),
                  ),
                  TextButton(
                    onPressed: openSignup,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 10,
                        color: green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';
import 'onboarding_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lotties/welcome.json', height: 400.0),
              FittedBox(
                child: Text(
                  "WELCOME",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 50.0,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OnBoardingPage();
                      },
                    ),
                  );
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text("Get Started"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage(title: 'Login');
                      },
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

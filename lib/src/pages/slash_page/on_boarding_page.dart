import 'package:flutter/material.dart';
import 'package:login_app_design/src/pages/auth_toggle.dart';

import 'models/onboarding_page_model.dart';
import 'widgets/onboarding_page_presenter.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(
        onSkip: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AuthToggle()),
          );
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AuthToggle()),
          );
        },
        // Inside OnboardingPage.dart
        pages: [
          OnboardingPageModel(
            title: 'Fast, Fluid and Secure',
            description:
                'Enjoy the best of the world in the palm of your hands.',
            imageUrl: 'assets/images/lottie/Buying a property.json',
            bgColor: const Color(0xff8f94fb), // Matches Login Button
          ),
          OnboardingPageModel(
            title: 'Connect with your friends.',
            description: 'Connect with your friends anytime anywhere.',
            imageUrl: 'assets/images/lottie/call center support.json',
            bgColor: const Color(0xff7367f0), // Deep purple
          ),
          OnboardingPageModel(
            title: 'Bookmark your favourites',
            description:
                'Bookmark your favourite quotes to read at a leisure time.',
            imageUrl: 'assets/images/lottie/Information Technology.json',
            bgColor: Colors.indigo.shade400,
          ),
          OnboardingPageModel(
            title: 'Follow creators',
            description: 'Follow your favourite creators to stay in the loop.',
            imageUrl: 'assets/images/lottie/Revenue.json',
            bgColor: const Color(0xff4e54c8), // Darker indigo
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/landing_page_widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const HeroSection(),
            // Features section will be added here
            // Testimonials section will be added here
            // Final CTA section will be added here
            const Footer(),
          ],
        ),
      ),
    );
  }
}

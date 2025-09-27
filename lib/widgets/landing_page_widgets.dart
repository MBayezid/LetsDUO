import 'package:flutter/material.dart';
import '../routes.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Let\'sDUO',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text('Features')),
              TextButton(onPressed: () {}, child: const Text('Pricing')),
              TextButton(onPressed: () {}, child: const Text('Sign In')),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, Routes.signup),
                child: const Text('Sign Up Free'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          Text(
            'Simplify Your Day. Accomplish More.',
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            'Let\'sDU is a simple, intuitive task manager that helps you organize your life, track progress, and get things done.',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, Routes.signup),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
            child: const Text('Start Your Free Trial'),
          ),
          const SizedBox(height: 12),
          OutlinedButton(
            onPressed: () => Navigator.pushNamed(context, Routes.browse),
            child: const Text('Explore as Guest'),
          ),
          const SizedBox(height: 16),
          const Text(
            'Trusted by thousands of users worldwide',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: () {}, child: const Text('About Us')),
          TextButton(onPressed: () {}, child: const Text('Contact')),
          TextButton(onPressed: () {}, child: const Text('Privacy Policy')),
          TextButton(onPressed: () {}, child: const Text('Terms of Service')),
        ],
      ),
    );
  }
}

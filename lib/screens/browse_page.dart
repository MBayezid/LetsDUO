import 'package:flutter/material.dart';
import '../routes.dart';

class BrowsePage extends StatelessWidget {
  const BrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore — Let\'sDUO (Guest)'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, Routes.signup),
            child: const Text(
              'Sign Up',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.search,
                  size: 88,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  'Explore Let\'sDUO as a Guest',
                  style: theme.textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Text(
                  'Take a tour of the main features without creating an account.\nYou can always sign up later to save your data.',
                  style: theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  alignment: WrapAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // For now, simulate continuing to the app home/dashboard as a guest
                        Navigator.pushReplacementNamed(context, Routes.home);
                      },
                      child: const Text('Continue as Guest'),
                    ),
                    OutlinedButton(
                      onPressed: () => Navigator.pushNamed(context, Routes.signup),
                      child: const Text('Create an Account'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 12),
                // Small preview area (placeholder) where feature tiles or read-only content may live
                SizedBox(
                  height: 160,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      4,
                      (i) => Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.check_circle_outline, color: theme.colorScheme.primary),
                              const SizedBox(height: 8),
                              Text('Feature ${i + 1}', style: theme.textTheme.titleMedium),
                              const SizedBox(height: 6),
                              const Text('Short description of what this feature does.'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

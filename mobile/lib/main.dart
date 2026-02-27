import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AuraApp());
}

class AuraApp extends StatelessWidget {
  const AuraApp({super.key});

  static const Color primary = Color(0xFF13EC80);
  static const Color backgroundLight = Color(0xFFF6F8F7);
  static const Color backgroundDark = Color(0xFF102219);

  @override
  Widget build(BuildContext context) {
    final baseTextTheme = ThemeData.light().textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aura Wellness',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: backgroundLight,
        primaryColor: primary,
        textTheme: GoogleFonts.manropeTextTheme(baseTextTheme),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: backgroundDark,
        primaryColor: primary,
        textTheme: GoogleFonts.manropeTextTheme(ThemeData.dark().textTheme),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const heroImageUrl =
      'https://lh3.googleusercontent.com/aida-public/AB6AXuAyRwXXkhi_7cvNHm6hc7W9PZqIe6jF86ZIyxqu551drftXkDS-YVA_Sd01cUy_nQO5QBAz6AEFuTsq5u5_kWiajlXP1K5norfK80DPiEuRGWW4kqTrqG4Qaall8-fj013upsL0ZqyMJbIPFljFnshXmq5dmJD0VLGbPntvPF8_q58EEEUIHBHXhbjrkpTzcG2hT33YHz0fcZcv8jDF-FuTmSu5icczBDl18uqeYaM359eTYGVgZFQKS9k9z9b32Wi5M59NAvqVKEg';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Logo & Title
                    Column(
                      children: [
                        const SizedBox(height: 8),
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AuraApp.primary.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Icon(
                            Icons.spa,
                            color: AuraApp.primary,
                            size: 40,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Aura',
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    // Hero Image
                    SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: SizedBox(
                          width: 300,
                          height: 300,
                          child: Stack(
                            children: [
                              // soft gradient blur background
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        AuraApp.primary.withOpacity(0.08),
                                        AuraApp.primary.withOpacity(0.28),
                                        AuraApp.primary.withOpacity(0.05),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              // image with rounded corners
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(heroImageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // subtle overlay for accessibility
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isDark ? Colors.black26 : Colors.white.withOpacity(0.02),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Text & Actions
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Your journey to digital balance starts here',
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleLarge?.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Rediscover focus, peace, and mindfulness in your digital life.',
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: isDark ? Colors.grey[300] : Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 18),
                          Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AuraApp.primary,
                                    foregroundColor: AuraApp.backgroundDark,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                                    elevation: 8,
                                  ),
                                  onPressed: () {},
                                  child: const Text('Get Started'),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextButton(
                                onPressed: () {},
                                child: RichText(
                                  text: TextSpan(
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: isDark ? Colors.grey[300] : Colors.grey[700],
                                      fontWeight: FontWeight.w600,
                                    ),
                                    children: [
                                      const TextSpan(text: 'Already have an account? '),
                                      TextSpan(
                                        text: 'Log In',
                                        style: TextStyle(color: AuraApp.primary, decoration: TextDecoration.underline, decorationColor: AuraApp.primary.withOpacity(0.3)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // iOS Home Indicator Space
            SizedBox(
              height: 40,
              child: Center(
                child: Container(
                  width: 140,
                  height: 6,
                  decoration: BoxDecoration(
                    color: isDark ? Colors.grey[700] : Colors.grey[300],
                    borderRadius: BorderRadius.circular(999),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.03), blurRadius: 6, offset: const Offset(0, 2))],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

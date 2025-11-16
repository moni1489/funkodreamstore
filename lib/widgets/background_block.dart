import 'package:flutter/material.dart';

class BackgroundBlock extends StatelessWidget {
  final Widget child;

  const BackgroundBlock({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF8C4DEB), Color(0xFF24203D)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}

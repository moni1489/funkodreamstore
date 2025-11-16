import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: const EdgeInsets.all(20),
      child: const Center(
        child: Text(
          '© Funko Dream Store, 2025. Все права защищены.',
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}

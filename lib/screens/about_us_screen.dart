import 'package:flutter/material.dart';
import '../widgets/background_block.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('О нас')),
      body: BackgroundBlock(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/about-us/logo.png'),
              const SizedBox(height: 20),
              Image.asset('assets/images/about-us/hero_figure.png'),
              const SizedBox(height: 20),
              const Text(
                'О нас',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              const Text(
                'Мы рады приветствовать Вас в нашем магазине, который развивается и движется вперёд такими же единомышленниками, как и Вы.',
                style: TextStyle(color: Colors.white70, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Мы отдали много сил для воплощения в реальность данного сайта. Надеемся, что Вам он понравится, будет полезен и удобен в использовании.',
                style: TextStyle(color: Colors.white70, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

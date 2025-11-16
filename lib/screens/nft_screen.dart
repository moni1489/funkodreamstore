import 'package:flutter/material.dart';
import '../widgets/background_block.dart';

class NftScreen extends StatelessWidget {
  const NftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Funko NFT')),
      body: BackgroundBlock(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Мир Funko NFT',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Встречайте удивительный раздел редких фигурок. '
                    'Изучите все необходимые нюансы в знакомстве, отметьте уже приобретённые Вами позиции.',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const SizedBox(height: 16),
              Image.asset(
                'assets/images/nft/hero_desktop.webp',
                width: 300,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Здесь пока ничего не делаем
                },
                child: const Text('Изучить больше'),
              ),
              const SizedBox(height: 50),
              const Text(
                '© Funko Dream Store, 2025. Все права защищены.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

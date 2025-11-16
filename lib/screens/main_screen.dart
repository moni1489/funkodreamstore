import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Каталог')));
}

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Под заказ')));
}

class ChecklistScreen extends StatelessWidget {
  const ChecklistScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('Чек-Листы')));
}

class NFTScreen extends StatelessWidget {
  const NFTScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('NFT')));
}

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('О нас')));
}

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});
  @override
  Widget build(BuildContext context) => const Scaffold(body: Center(child: Text('FAQ')));
}
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void _openVK() async {
    final url = Uri.parse('https://vk.com/write-217450069');
    if (!await launchUrl(url)) throw 'Could not launch $url';
  }

  void _openNFT() async {
    final url = Uri.parse('/nfts');
    if (!await launchUrl(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          // Navbar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            color: Colors.black.withOpacity(0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => const MainScreen())),
                  child: SvgPicture.asset('assets/images/main/logo.svg', width: 100),
                ),
                Row(
                  children: [
                    _navButton(context, 'Главная', () => Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => const MainScreen()))),
                    _navButton(context, 'Каталог', () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const CatalogScreen()))),
                    _navButton(context, 'Под заказ', () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const OrderScreen()))),
                    _navButton(context, 'Чек-Листы', () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const ChecklistScreen()))),
                    _navButton(context, 'NFT', () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const NFTScreen()))),
                    _navButton(context, 'О нас', () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const AboutUsScreen()))),
                    _navButton(context, 'FAQ', () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const FAQScreen()))),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Личный кабинет',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF24203D), Color(0xFF3D1F62)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // HERO
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Funko Dream Store',
                            style: theme.textTheme.headlineMedium?.copyWith(
                              fontFamily: 'ProximaNova',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Оригинальная продукция Funko c возможностью оформления индивидуальных заказов.',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontFamily: 'ProximaNova',
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF8C4DEB),
                                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                ),
                                child: const Text('Каталог'),
                              ),
                              const SizedBox(width: 12),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.white),
                                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                ),
                                child: const Text(
                                  'Узнать больше',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Center(
                            child: Image.asset(
                              'assets/images/main/hero_1.webp',
                              width: 300,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white.withOpacity(0.05),
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Почему выбирают нас?',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontFamily: 'ProximaNova',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _aboutItem('Большой выбор', 'Выкупаем и доставляем любые фигурки…', 'alienmain.webp'),
                              _aboutItem('Удобная оплата', '50% предоплаты.', 'flash.svg', isSvg: true),
                              _aboutItem('Уникальное отслеживание', 'Отслеживание в личном кабинете.', 'wallet.svg', isSvg: true),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Center(
                            child: Image.asset(
                              'assets/images/main/smartphone--web.webp',
                              width: 250,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // EXCLUSIVE
                    Container(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Эксклюзивные возможности',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontFamily: 'ProximaNova',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _exclusiveItem(
                                'Custom',
                                'Собрать уникальную фигурку',
                                'custom.webp',
                                onPressed: _openVK,
                              ),
                              _exclusiveItem(
                                'NFT',
                                'Последний выпуск',
                                'nft_preview_1.svg',
                                isSvg: true,
                                onPressed: _openNFT,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navButton(BuildContext context, String title, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _aboutItem(String title, String subtitle, String image, {bool isSvg = false}) {
    return Column(
      children: [
        isSvg
            ? SvgPicture.asset('assets/images/main/$image', width: 50, height: 50)
            : Image.asset('assets/images/main/$image', width: 50, height: 50),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(subtitle, style: const TextStyle(color: Colors.white70), textAlign: TextAlign.center),
      ],
    );
  }

  Widget _exclusiveItem(String title, String subtitle, String image, {bool isSvg = false, VoidCallback? onPressed}) {
    return Column(
      children: [
        isSvg
            ? SvgPicture.asset('assets/images/main/$image', width: 100, height: 100)
            : Image.asset('assets/images/main/$image', width: 100, height: 100),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 4),
        Text(subtitle, style: const TextStyle(color: Colors.white70), textAlign: TextAlign.center),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF8C4DEB)),
          child: const Text('Заказать'),
        ),
      ],
    );
  }
}

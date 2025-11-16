import 'package:flutter/material.dart';
import '../widgets/top_nav_bar.dart';
import '../widgets/footer.dart';
import '../widgets/background_block.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopNavBar(),
      body: BackgroundBlock(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/cart.png', width: 150),
                const SizedBox(height: 20),
                const Text(
                  'Ваша корзина пока пуста',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Перейти к оформлению', style: TextStyle(fontSize: 18)),
                  ),
                ),
                const SizedBox(height: 30),
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/catalog_screen.dart';
import 'screens/order_screen.dart';
import 'screens/checklist_screen.dart';
import 'screens/about_us_screen.dart';
import 'screens/faq_screen.dart';
import 'screens/nft_screen.dart';
import 'screens/login.dart';
import 'screens/cart_screen.dart';

void main() {
  runApp(const FunkoDreamStoreApp());
}

class FunkoDreamStoreApp extends StatelessWidget {
  const FunkoDreamStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Funko Dream Store',
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/catalog': (context) => const CatalogScreen(),
        '/order': (context) => const OrderScreen(),
        '/checklist': (context) => const ChecklistScreen(),
        '/about': (context) => const AboutUsScreen(),
        '/faq': (context) => const FaqScreen(),
        '/nft': (context) => const NftScreen(),
        '/login': (context) => const LoginScreen(),
        '/cart': (context) => const CartScreen(),
      },
    );
  }
}

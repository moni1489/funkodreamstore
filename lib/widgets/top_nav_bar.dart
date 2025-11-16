import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  const TopNavBar({super.key});

  Widget _navItem(BuildContext context, String title, String route, {bool replace = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GestureDetector(
        onTap: () {
          if (replace) {
            Navigator.pushReplacementNamed(context, route);
          } else {
            Navigator.pushNamed(context, route);
          }
        },
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black, // всегда черный
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Image.asset('assets/images/logo.png', height: 40),
          const SizedBox(width: 16),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _navItem(context, "Главная", "/"),
                  _navItem(context, "Каталог", "/catalog"),
                  _navItem(context, "Под заказ", "/order"),
                  _navItem(context, "Чек-листы", "/checklist"),
                  _navItem(context, "NFT", "/nft"),
                  _navItem(context, "FAQ", "/faq"),
                  _navItem(context, "О нас", "/about"),
                  _navItem(context, "Корзина", "/cart", replace: true),
                  _navItem(context, "Войти", "/login", replace: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

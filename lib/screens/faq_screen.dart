import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/background_block.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> faqItems = [
      {
        'question': 'Наши гарантии, почему именно мы',
        'answer':
        'Работаем с 2022 года, доставили 15 000+ фигурок. Тщательно обрабатываем все заказы, консультируем на протяжении всей доставки. Собрано 3000+ отзывов, ознакомиться c ними можно в VK и на Avito. ИП: Колмогорцев Роман АлексеевичИНН: 519048562540; ОГРНИП: 322519000012225;Юр. адрес регистрации: г. Мурманск.Упрощённая система налогообложения (УСН).Все платежи проходят через онлайн-кассу, фискальные чеки отправляются на почту клиента.'
      },
      {
        'question': 'Повреждения и компенсации при доставке из США',
        'answer': 'Мы тщательно упаковываем заказы, но не исключаем риски при доставке.Компенсации предоставляются исключительно в индивидуальном порядке и требуют ручной обработки.Отметим, что мы не производители, а посредники, поэтому дефекты покраски, повреждённый блистер или отсутствие стикера - не имеют основание на открытие спора.'
      },
      {
        'question': 'Способы отслеживания заказов',
        'answer': 'Наша система отслеживания — наша гордость.Вы получаете доступ в личный кабинет на сайте, где можно удобно следить за всеми статусами заказов.Если Вы заказывали до создания сайта, база старых заказов будет переноситься постепенно и отобразиться в Вашем личном кабинете. Новые заказы прикрепляются автоматически.После поступления на склад в Москве можно выбрать доставку или самовывоз.',
      },
      {
        'question': 'Повреждения и компенсации при доставке из США',
        'answer':
        'Мы тщательно упаковываем заказы, но не исключаем риски при доставке. Компенсации предоставляются исключительно индивидуально. Дефекты покраски, повреждённый блистер или отсутствие стикера не являются основанием для спора.'
      },
      {
        'question': 'Способы отслеживания заказов',
        'answer':
        'Наша система отслеживания — наша гордость. Вы получаете доступ в личный кабинет на сайте, где можно удобно следить за статусами заказов. Старые заказы постепенно переносятся в базу, новые прикрепляются автоматически.'
      },
      {
        'question': 'Способы получения заказов',
        'answer':
        'Вы можете забрать заказ со склада в Москве или оформить доставку по РФ и СНГ (через CDEK). Упаковка оплачивается отдельно: 1–3 шт — 100₽, 4–5 шт — 150₽, 6–8 шт — 200₽, 9–15 шт — 350₽, 16–25 шт — 700₽, 26–35 шт — 1 200₽.'
      },
      {
        'question': 'Страхование при доставке из США или РФ',
        'answer':
        'Для заказов из США, Европы и Китая — страховка 10% от стоимости заказа, компенсация 100% при утере, повреждениях или задержке >60 дней. Для РФ/СНГ — страховка 5%, компенсация аналогично, ответственность за задержку несёт агент-посредник.'
      },
      {
        'question': 'Виды заказов и их работа',
        'answer':
        'Оформление заказов через VK, Avito, Telegram, Instagram или на сайте. Можно заказывать новинки, NFT наборы и индивидуальные предзаказы. Все заказы обрабатываются вручную, консультирование идёт на каждом этапе.'
      },
      {
        'question': 'Способы оплаты заказов',
        'answer':
        'Оплата на сайте: СБП, банковские карты, Sber Pay, Tinkoff Pay, Яндекс Pay. Все платежи через онлайн-кассу, фискальные чеки отправляются на почту.'
      },

      {
        'question': 'Оформление возвратов',
        'answer':
        'Индивидуальные предзаказы не подлежат возврату. Фигурки из наличия — 14 дней для открытия спора через раздел Контакты.'
      },
      {
        'question': 'Задержка в сроках доставки',
        'answer':
        'Срок считается от даты отправки магазином/продавцом. 70+ дней — бесплатная доставка РФ/СНГ, 90+ дней — полный возврат, 120+ дней — заказ передаётся бесплатно, предоплата возвращается полностью. Только для заказов с сайта.'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('FAQ')),
      body: BackgroundBlock(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Вопросы и ответы',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Наши гарантии, почему именно мы',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const SizedBox(height: 16),
              ...faqItems.map(
                    (item) {
                  return ExpansionTile(
                    title: Text(
                      item['question']!,
                      style: const TextStyle(color: Colors.white),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: item['question']!.contains('VK') ||
                            item['question']!.contains('Avito')
                            ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () => _launchURL(
                                  'https://vk.com/funkodreamstore'),
                              child: const Text(
                                'VK: https://vk.com/funkodreamstore',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _launchURL(
                                  'https://www.avito.ru/brands/fds'),
                              child: const Text(
                                'Avito: https://www.avito.ru/brands/fds',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _launchURL(
                                  'https://www.avito.ru/brands/i316035197'),
                              child: const Text(
                                'Avito (альт.): https://www.avito.ru/brands/i316035197',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        )
                            : Text(
                          item['answer']!,
                          style: const TextStyle(color: Colors.white70),
                        ),
                      ),
                    ],
                  );
                },
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

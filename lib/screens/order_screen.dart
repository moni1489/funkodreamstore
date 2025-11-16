import 'dart:io';
import 'package:flutter/material.dart';
import '../widgets/top_nav_bar.dart';
import '../widgets/footer.dart';
import '../widgets/background_block.dart';
import 'package:image_picker/image_picker.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<TextEditingController> _linkControllers = [TextEditingController()];
  File? _selectedImage;
  String _boxCondition = 'Идеальное';
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? picked = await _picker.pickImage(source: ImageSource.gallery);
    if (picked != null) setState(() => _selectedImage = File(picked.path));
  }

  void _addLinkField() => setState(() => _linkControllers.add(TextEditingController()));

  @override
  void dispose() {
    for (var c in _linkControllers) c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopNavBar(),
      body: BackgroundBlock(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Индивидуальный предзаказ",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Мы найдём любые фигурки Funko, выпущенные когда-либо. После оформления с вами свяжется менеджер.",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text("Ссылка или ник аккаунта VK/Telegram:", style: TextStyle(color: Colors.white70)),
                const SizedBox(height: 6),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Введите ссылку",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Ссылки на товар:", style: TextStyle(color: Colors.white70)),
                const SizedBox(height: 10),
                ..._linkControllers.map((controller) {
                  int i = _linkControllers.indexOf(controller);
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: "Ссылка на товар ${i + 1}",
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  );
                }).toList(),
                TextButton.icon(
                  onPressed: _addLinkField,
                  icon: const Icon(Icons.add, color: Colors.white),
                  label: const Text("Добавить ещё товар", style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 20),
                const Text("Загрузите фотографии фигурки:", style: TextStyle(color: Colors.white70)),
                const SizedBox(height: 8),
                Center(
                  child: _selectedImage == null
                      ? const Text("Фото не выбрано", style: TextStyle(color: Colors.white))
                      : Image.file(_selectedImage!, height: 200),
                ),
                TextButton.icon(
                  onPressed: _pickImage,
                  icon: const Icon(Icons.upload, color: Colors.white),
                  label: const Text("Загрузить фото", style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 20),
                const Text("Состояние коробки:", style: TextStyle(color: Colors.white70)),
                const SizedBox(height: 8),
                DropdownButton<String>(
                  value: _boxCondition,
                  items: const [
                    DropdownMenuItem(value: "Идеальное", child: Text("Идеальное")),
                    DropdownMenuItem(value: "Среднее", child: Text("Среднее")),
                    DropdownMenuItem(value: "Не важно", child: Text("Не важно")),
                  ],
                  onChanged: (v) => setState(() => _boxCondition = v!),
                  dropdownColor: Colors.deepPurple[400],
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("Заказ отправлен!"))),
                    child: const Text("Заказать", style: TextStyle(fontSize: 18)),
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

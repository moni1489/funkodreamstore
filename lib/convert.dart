import 'dart:io';
import 'package:image/image.dart';

void main() {
  final dir = Directory('assets/images');
  final out = Directory('assets/converted');

  if (!out.existsSync()) out.createSync();

  for (var entity in dir.listSync(recursive: true)) {
    if (entity.path.endsWith('.webp')) {
      final bytes = File(entity.path).readAsBytesSync();
      final img = decodeWebP(bytes);

      if (img != null) {
        final newPath = entity.path
            .replaceAll('assets/images', 'assets/converted')
            .replaceAll('.webp', '.png');

        File(newPath)
          ..createSync(recursive: true)
          ..writeAsBytesSync(encodePng(img));

        print('Converted: $newPath');
      }
    }
  }
}

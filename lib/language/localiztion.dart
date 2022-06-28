import 'package:get/route_manager.dart';
import 'package:smart/language/ar.dart';
import 'package:smart/language/en.dart';
import 'package:smart/utils/my_string.dart';

class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
      };
}

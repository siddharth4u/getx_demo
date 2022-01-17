import 'package:get/get.dart';
import 'package:getx_demo/i18n/english.dart';
import 'package:getx_demo/i18n/hindi.dart';

import 'marathi.dart';

class MyTranslations extends Translations {
  //
  @override
  Map<String, Map<String, String>> get keys => {
        // English language mappings
        'US_en': English.values(),

        // Marathi Language mapping
        'IN_mr': Marathi.values(),

        // Hindi
        'IN_hi': Hindi.values(),
      };
}

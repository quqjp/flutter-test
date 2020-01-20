import 'package:flutter/material.dart';

import 'sample1/sample1_page.dart';
import 'sample2/sample2_page.dart';

Future<void> main() async {
  runApp(MaterialApp(
    title: '',
    initialRoute: '/sample2',
    routes: {
      //
      //
      //
      '/sample1': (context) => Sample1Page(
            title: 'サンプル1',
          ),
      //
      //
      //
      '/sample2': (context) => Sample2Page(
            title: 'サンプル2',
          ),
    },
  ));
}

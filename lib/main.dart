import 'package:flutter/material.dart';

import 'sample1/sample1_page.dart';

Future<void> main() async {
  runApp(MaterialApp(
    title: '',
    initialRoute: '/sample1',
    routes: {
      //
      //
      //
      '/sample1': (context) => Sample1Page(
            title: 'サンプル１',
          ),
    },
  ));
}

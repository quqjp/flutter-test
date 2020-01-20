import 'package:flutter/material.dart';

import 'sample1/sample1_page.dart';
import 'sample2/sample2_page.dart';
import 'sample3/sample3_page.dart';

Future<void> main() async {
  runApp(MaterialApp(
    title: '',
    initialRoute: '/sample3',
    routes: {
      //
      // 全面にローディングを表示させるサンプル
      //
      '/sample1': (context) => Sample1Page(
            title: 'サンプル1',
          ),
      //
      // 幅320px端末でstatus barを隠すサンプル
      //
      '/sample2': (context) => Sample2Page(
            title: 'サンプル2',
          ),
      //
      // 幅320px端末でstatus barを隠すサンプル
      //
      '/sample3': (context) => Sample3Page(
            title: 'サンプル3',
          ),
    },
  ));
}

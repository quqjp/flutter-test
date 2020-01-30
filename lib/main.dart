import 'package:flutter/material.dart';

import 'sample1/sample1_page.dart';
import 'sample2/sample2_page.dart';
import 'sample3/sample3_page.dart';
import 'sample4/sample4_page.dart';

Future<void> main() async {
  runApp(MaterialApp(
    title: '',
    initialRoute: '/sample4',
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
      // カメラの映像を表示させるサンプル
      //
      '/sample3': (context) => Sample3Page(
            title: 'サンプル3',
          ),
      //
      // カメラの映像を正方形で表示させるサンプル
      //
      '/sample4': (context) => Sample4Page(
            title: 'サンプル4',
          ),
    },
  ));
}

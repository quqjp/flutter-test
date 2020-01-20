//dart package
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//third party package

//my package

//same package

//
// 幅320px端末でstatus barを隠すサンプル
//
class Sample2Page extends StatefulWidget {
  Sample2Page({Key key, this.title}) : super(key: key);

  // タイトル
  final String title;

  @override
  _State createState() => _State();
}

class _State extends State<Sample2Page> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    //幅320px端末で status barを隠す
    if (MediaQuery.of(context).size.width == 320) {
      SystemChrome.setEnabledSystemUIOverlays([]);
    }
  }

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //
      body: Container(
        alignment: Alignment.center,
        child: Text('幅320px端末でstatus barを隠すサンプル'),
      ),
    );
  }
}

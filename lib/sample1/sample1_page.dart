//dart package
import 'package:flutter/material.dart';

//third party package

//my package

//same package
import "overlay_loading_molecules.dart";

//
// 全面にローディングを表示させるサンプル
//
class Sample1Page extends StatefulWidget {
  Sample1Page({Key key, this.title}) : super(key: key);

  // タイトル
  final String title;

  @override
  _State createState() => _State();
}

class _State extends State<Sample1Page> {
  //ローディング表示の状態
  bool visibleLoading = false;

  @override
  void initState() {
    super.initState();
  }

  //
  //
  // ボタンハンドラ
  onPressMyButton() async {
    //ローディングを表示
    setState(() {
      visibleLoading = true;
    });

    //２秒待つ
    await Future.delayed(const Duration(milliseconds: 2000), () {});

    //ローディングを非表示
    setState(() {
      visibleLoading = false;
    });
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
      body: ClipRect(
        child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.clip,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //
                //ローディングを表示させるためのボタン
                RaisedButton(
                  onPressed: onPressMyButton,
                  child: Text('ローディングを表示', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            //
            //ローディング
            OverlayLoadingMolecules(visible: visibleLoading)
          ],
        ),
      ),
    );
  }
}

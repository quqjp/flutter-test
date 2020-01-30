//dart package
import 'package:flutter/material.dart';

//third party package
import 'package:camera/camera.dart';

//my package

//same package

//
// カメラの映像を正方形で表示させるサンプル
//
class Sample4Page extends StatefulWidget {
  Sample4Page({Key key, this.title}) : super(key: key);

  // タイトル
  final String title;

  @override
  _State createState() => _State();
}

class _State extends State<Sample4Page> {
  //カメラリスト
  List<CameraDescription> _cameras;

  //カメラコントローラ
  CameraController _controller;

  //
  double _aspectRatio = 1.0;

  @override
  void initState() {
    super.initState();

    initCamera();
  }

  //
  // カメラを準備
  //
  initCamera() async {
    _cameras = await availableCameras();

    if (_cameras.length != 0) {
      _controller = CameraController(_cameras[0], ResolutionPreset.high);
      _controller.initialize().then((_) {
        if (!mounted) {
          return;
        }

        //カメラ接続時にbuildするようsetStateを呼び出し
        setState(() {});
      });
    }
  }

  //
  // カメラの表示比率を変更する
  //
  _toggle() {
    setState(() {
      _aspectRatio = _aspectRatio == 1.0 ? 0.7 : 1.0;
    });
  }

  ///
  ///
  ///
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {
              _toggle();
            },
          ),
        ],
      ),
      //
      body: Container(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: _aspectRatio,
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.fitWidth,
            child: _controller != null && _controller.value.isInitialized
                ? Container(
                    width: size,
                    height: size / _controller.value.aspectRatio,
                    child: CameraPreview(_controller))
                : Container(),
          ),
        ),
      ),
    );
  }
}

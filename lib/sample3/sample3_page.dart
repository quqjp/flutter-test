//dart package
import 'package:flutter/material.dart';

//third party package
import 'package:camera/camera.dart';

//my package

//same package

//
// カメラの映像を表示させるサンプル
//
class Sample3Page extends StatefulWidget {
  Sample3Page({Key key, this.title}) : super(key: key);

  // タイトル
  final String title;

  @override
  _State createState() => _State();
}

class _State extends State<Sample3Page> {
  //カメラリスト
  List<CameraDescription> _cameras;

  //カメラコントローラ
  CameraController _controller;

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
        child: _controller != null && _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: CameraPreview(_controller),
              )
            : Container(),
      ),
    );
  }
}

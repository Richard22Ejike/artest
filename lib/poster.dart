import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';



class poster extends StatelessWidget {
  String css = '''
model-viewer#reveal {
  --poster-color: transparent;
}
''';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(title: Text("Model Viewer"),
            leading: ElevatedButton.icon(onPressed: (){
              Navigator.pop(context);
            },
                icon: Icon(Icons.arrow_back_ios),
                label: Text('back')),),
          body: ModelViewer(
            id: "revea",
            loading: Loading.eager,
            cameraControls: true,
            autoRotate: true,
            poster: "https://modelviewer.dev/assets/poster-shishkebab.webp",
            src: "https://modelviewer.dev/shared-assets/models/shishkebab.glb",
            alt: "A 3D model of a shishkebab",
            relatedCss: css,
            ar: true,
          ));
  }
}
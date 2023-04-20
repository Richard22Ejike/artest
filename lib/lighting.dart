import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';



class lighting extends StatelessWidget {
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
          ar: true,

          cameraControls: true,
          skyboxImage:
          "https://modelviewer.dev/shared-assets/environments/spruit_sunrise_1k_HDR.hdr",
          alt: "A 3D model of a damaged helmet",
          src:
          "https://modelviewer.dev/shared-assets/models/glTF-Sample-Models/2.0/DamagedHelmet/glTF/DamagedHelmet.gltf",
        ),
      );
  }
}
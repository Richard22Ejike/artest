/* This is free and unencumbered software released into the public domain. */

import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';



class normal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Model Viewer"),
          leading: ElevatedButton.icon(onPressed: (){
            Navigator.pop(context);
          },
              icon: Icon(Icons.arrow_back_ios),
              label: Text('back')),),
        body: ModelViewer(

          backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
          src: 'assets/Astronaut.glb', // a bundled asset file
          alt: "A 3D model of an astronaut",
          ar: true,
          arModes: ['scene-viewer', 'webxr', 'quick-look'],
          autoRotate: true,
          cameraControls: true,
          iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
          disableZoom: true,
        ),
      );
  }
}
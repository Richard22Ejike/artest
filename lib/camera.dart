import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';



class camera extends StatelessWidget {
  String js = r'''
(() => {
  const modelViewer = document.querySelector('#orbit-demo');
  const orbitCycle = [
    '45deg 55deg 4m',
    '-60deg 110deg 2m',
    modelViewer.cameraOrbit
  ];

  setInterval(() => {
    const currentOrbitIndex = orbitCycle.indexOf(modelViewer.cameraOrbit);
    modelViewer.cameraOrbit =
        orbitCycle[(currentOrbitIndex + 1) % orbitCycle.length];
  }, 3000);
})();
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
            id: "orbit-demo",
            interpolationDecay: 200,
            src: "https://modelviewer.dev/shared-assets/models/Astronaut.glb",
            alt: "A 3D model of an astronaut",
            relatedJs: js,
            ar: true,
          ));
  }
}
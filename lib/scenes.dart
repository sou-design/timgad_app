import 'package:flutter/material.dart';
import 'vr.dart';

final Map sceneNames = {'ancient ruins':'ancient_ruins_02.glb', 'murs':'Mur2_.glb', 'tribunes':'Tribunes.glb', 'mur timgad':'murTimgad2_.glb', 'dummy':'dummy.glb', 'complete scene':''};
class Scenes extends StatefulWidget {
  const Scenes({Key? key}) : super(key: key);


  @override
  _ScenesState createState() => _ScenesState();
}

class _ScenesState extends State<Scenes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scenes'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  child: ElevatedButton(
                    child: const Text("Ruins"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const VR(path: "assets/ancient_ruins_02.glb", title: 'Ancient Runes',)));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  child: ElevatedButton(
                    child: const Text("Walls"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VR(path: "assets/Mur2_.glb", title: 'Murs',)));
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  child: ElevatedButton(
                    child: const Text("Timagad's Wall"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const VR(path: "assets/murTimgad2_.glb", title: "Timagad's Wall",)));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  child: ElevatedButton(
                    child: Text("Tribunes"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VR(path: "assets/Tribunes.glb", title: 'Tribunes',)));
                    },
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  child: ElevatedButton(
                    child: const Text("Dummy"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const VR(path: "assets/dummy.glb", title: 'Dummy',)));
                    },
                  ),
                ),
              ),
            ],
          ),
          const Image(image: AssetImage("assets/Blender_scene_image.png"))
        ],
      ),
    );
  }
}


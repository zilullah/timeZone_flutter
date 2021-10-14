import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setup() async {
    world instance = world(
        lokasi: 'makassar', bendera: 'gambar.png', url: 'makkasar/makancuy');
    await instance.dptTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'lokasi': instance.lokasi,
      'bendera': instance.bendera,
      'waktu': instance.waktu,
    });
  }
  // void  gas(){
  //   world i = world(lokasi: 'di sini', bendera: 'indonesia.jpg', url: 'makan/Makcuy');
  //   i.dptTime();
  //   Navigator.pushReplacementNamed(context, '/home', arguments: {
  //     'lokasi'  : i.lokasi,
  //     'bendera' : i.bendera,
  //     'waktu' : i.waktu
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setup();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('loading'),
      ),
    );
  }
}

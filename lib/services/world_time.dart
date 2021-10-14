import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class world {
  String lokasi; //ui untuk lokasi
  String waktu; //ui buat waktu lokasi
  String bendera; //gambar untuk ui di gambar folder
  String url; //url lokasi untu api point akhir

  world({this.lokasi, this.bendera, this.url});

  Future<void> dptTime() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //print(data);
      //dpt data dari data
      String tgl = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //print(tgl);
      //print(offset);

      //buat tgl
      DateTime now = DateTime.parse(tgl);
      now = now.add(Duration(hours: int.parse(offset)));
      //set waktu properti
      waktu = DateFormat.jm().format(now);
    } catch (e) {
      print('errornya di sini ; $e');
      waktu = "Data tidak berhasil di muat";
    }
  }
}

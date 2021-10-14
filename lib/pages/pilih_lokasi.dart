import 'package:flutter/material.dart';


class PilihLokasi extends StatefulWidget {
  @override
  _PilihLokasiState createState() => _PilihLokasiState();
}

class _PilihLokasiState extends State<PilihLokasi> {
   int counter = 0;

   
  @override
  Widget build(BuildContext context) {
    print("coba coba");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("pilih lokasi"),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter +=1;
          });
        },
        child: Text("cie ditambahin: $counter"),
      ),
    );
  }
}
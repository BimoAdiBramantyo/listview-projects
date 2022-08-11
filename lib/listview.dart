import 'package:flutter/material.dart';
import 'package:listview/NameModel.dart';


class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {

  List<NameModel> data = [
    NameModel("Adhanafi Ilyas", "AI",  "Absen: 01", "Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Ahmad Aziz", "AA", "Absen: 02","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Akbar Rizqullah", "AR", "Absen: 03","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Alwan Athallah", "AA", "Absen: 04","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Amri Iqra", "AI", "Absen: 05","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Sejati Adli", "SA", "Absen: 06","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Andika Setya", "AS", "Absen: 07","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Antariksa Kusuma", "AK", "Absen: 08","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Azzra Rienov", "AR", "Absen: 09","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Bayu Septian", "BS", "Absen: 10","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Bhre Nabil", "BN", "Absen: 11","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Bimo Adi", "BA", "Absen: 12","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Daffa Syauqi", "DS", "Absen: 13","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Danar Gading", "DG", "Absen: 14","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Dimas Bagus", "DB", "Absen: 15","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Firdaus Hafidz", "FH", "Absen: 16","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Hegel Al Rafli", "HAR", "Absen: 17","Pengembangan Perangkat Lunak Dan Gim"),
    NameModel("Hibatullah Fawwaz", "HF", "Absen: 18","Pengembangan Perangkat Lunak Dan Gim"),
  ];

  Widget avatar(int index){
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.orangeAccent,
      child: Text(
        data[index].kodeName.toString(),
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  Widget textData(int index){
    return Expanded(child: Container(
      margin: EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            data[index].name.toString(),
            style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Text(data[index].jurusan.toString()),
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Text(data[index].absen.toString()),
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: data.length,
        itemBuilder: (buildContext, index) {
          return GestureDetector(
            onTap: () => showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
              title: Text("Hapus Kontak"),
              content: Text("Anda yakin ingin menghapus kontak ${data[index].name}?"),
              actions: <Widget>[
                FlatButton(
                  child: Text("Ya"),
                  onPressed: (){
                    setState(() {
                      data.removeAt(index);
                    });
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text("Tidak"),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            )),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  avatar(index),
                  textData(index),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



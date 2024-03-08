import 'package:flutter/material.dart';
import 'profil.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MenuUtama(),
));

class MenuUtama extends StatefulWidget {
  @override
  _MenuUtamaState createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  String image1 = 'img/fotobalya.png';
  String image2 = 'img/fotohaula.png';
  String? gantiGambar;

  String nama1 = 'Balya';
  String nama2 = 'Haula';
  String? gantiNama;

  String email1 = 'balya@gmail.com';
  String email2 = 'haula@gmail.com';
  String? gantiEmail;

  void tukar() {
    setState(() {
      gantiGambar = image1;
      image1 = image2;
      image2 = gantiGambar!;

      gantiNama = nama1;
      nama1 = nama2;
      nama2 = gantiNama!;

      gantiEmail = email1;
      email1 = email2;
      email2 = gantiEmail!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata App'),
        titleTextStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(nama1),
              accountEmail: Text(email1),
              currentAccountPicture: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            Profil(image: image1, nama: nama1, email: email1)));
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(image1),
                    backgroundColor: Colors.white,
                  )),
              decoration: BoxDecoration(color: Colors.blue),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                  onTap: () => tukar(),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(image2),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text('Close'),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Selamat Datang!"),
        ),
      ),
    );
  }
}

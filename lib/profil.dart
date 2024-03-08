import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  Profil({this.image, this.nama, this.email});
  final String? image;
  final String? nama;
  final String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            padding: EdgeInsets.all(40.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(image!),
                    radius: 70.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(35.0),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: nama,
                        hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.blue,
                        )
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: email,
                        hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(
                          Icons.edit,
                          color: Colors.blue,
                        )
                    ),
                  )
                ],
              ),
            )));
  }
}

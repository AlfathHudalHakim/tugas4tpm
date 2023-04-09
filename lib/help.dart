import 'package:flutter/material.dart';
import 'package:tugas4tpm/main.dart';

class Help extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Login()
                  )
              );
              SnackBar snackBar = const SnackBar(
                duration: Duration(seconds: 2),
                content: Text(
                  'Logout berhasil',
                ),
                backgroundColor:  Colors.green,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child:  Icon(Icons.logout_outlined,
              size: 38,) ,
          ),
          SizedBox(width: 20,)

        ],
        title: Text('Bantuan'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("1. Untuk melihat daftar anggota kelompok, tekan tombol Daftar Anggota",
            style: TextStyle(
              fontSize: 20
            ),),
            SizedBox(height: 5),
            Text("2. Untuk menggunakan stopwatch tekan tombol Stopwatch",
              style: TextStyle(
                  fontSize: 20
              ),),
            SizedBox(height: 5),
            Text("3. Untuk melihat daftar situs tekan tombol daftar situs",
              style: TextStyle(
                  fontSize: 20
              ),),
            SizedBox(height: 5),
            Text("4. Untuk melihat daftar situs yang telah difavoritekan tekan tombol favorite",
              style: TextStyle(
                  fontSize: 20
              ),),

          ],

        ),
      ),
    );
  }

}
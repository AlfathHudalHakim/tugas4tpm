import 'package:flutter/material.dart';

class Daftar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Anggota Kelompok'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            Center(
              child: Text("1. Alfath Hudal Hakim"
                  " 123200045"),

            ),
            Center(
              child: Text("2. Fridolin Barudo Ristrian Aji"
                  " 123200079"),

            ),


          ],

        ),
      ),
    );
  }

}
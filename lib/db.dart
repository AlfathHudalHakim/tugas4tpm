import 'package:flutter/material.dart';
import 'main.dart';
import 'daftar.dart';
import 'stopwatch.dart';
import 'site.dart';
import 'favorite.dart';

class Db extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: SafeArea(

        child: ListView(
          children: [
            SizedBox(height: 50),
            Column(
              children: [
                SizedBox(width: 35),
                SizedBox(
                  height: 100,
                  width: 180,
                  child:
                  ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => Daftar());
                      Navigator.push(context, route);
                    }
                    , child: Row(
                    children: [
                      Icon(Icons.people),
                      SizedBox(width: 10),
                      Text("Daftar Anggota")
                    ],
                  ),
                  ),
                ),

                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: 180,
                  child: ElevatedButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => StopwatchMenu());
                        Navigator.push(context, route);
                      }
                      , child: Row(
                    children: [
                      Icon(Icons.timer),
                      SizedBox(width: 10),
                      Text("Stopwatch")
                    ],
                  ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: 180,
                  child: ElevatedButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(builder: (context) => Site());
                        Navigator.push(context, route);
                      }
                      , child: Row(
                    children: [
                      Icon(Icons.list),
                      SizedBox(width: 10),
                      Text("Daftar Situs")
                    ],
                  ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(builder: (context) => Favorite());
                      Navigator.push(context, route);
                    }
                    , child: Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 10),
                      Text("Favorite")
                    ],
                  ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

}
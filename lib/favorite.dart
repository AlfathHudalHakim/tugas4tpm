import 'package:flutter/material.dart';
import 'sites.dart';
import 'detail.dart';

class Favorite extends StatelessWidget{
  @override
  final List<Sites> favorite =
  listSite.where((web) => web.fav == true).toList();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Daftar Situs Rekoimendasi'),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: favorite.length
            , itemBuilder: (context, index) {
          final Sites site = favorite[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(
                site : site,
              )));
            },
            child: Card(
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Container(
                    width: MediaQuery.of(context).size.width/3,
                    child: Image.network(site.imgUrls,
                      height: 90,
                      width: 90,),
                  ),
                  Text(site.name)
                ],
              ),
            ),
          );
        })
    );
  }

}
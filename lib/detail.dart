import 'package:flutter/material.dart';
import 'sites.dart';

class Detail extends StatefulWidget {
  final Sites site;
  const Detail({Key? key, required this.site}) : super(key: key);
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Penyakit'),
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: IconButton(
              icon:
              widget.site.fav ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
              onPressed: () {
                setState(() {
                  widget.site.fav = !widget.site.fav;
                });
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/3,
            height: 150,
            child: ListView.builder(
                itemCount: widget.site.imgUrls.length,
                itemBuilder: (context, index) {
                  return Image.network(widget.site.imgUrls,
                  );
                }
            ),
          ),
          Text(widget.site.name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40,),
          Text('Nama Situs',
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(widget.site.name),
          SizedBox(height: 15,),
          Text('Link Situs',
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(widget.site.link),


        ],

      ),
    );

  }

}
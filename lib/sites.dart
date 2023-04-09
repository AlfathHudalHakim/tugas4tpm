class Sites {
  String link;
  String name;
  String imgUrls;
  bool fav;

  Sites(
      {required this.link,
      required this.name,
      required this.imgUrls,
      required this.fav});
}

var listSite = [
  Sites(
      link: "https://www.wikipedia.org/",
      name: "Wikipedia",
      imgUrls:
          "https://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/1200px-Wikipedia-logo-v2.svg.png",
      fav: false),
  Sites(
      link: "https://www.youtube.com/",
      name: "Youtube",
      imgUrls:
          "https://logodownload.org/wp-content/uploads/2014/10/youtube-logo-0.png",
      fav: false),
  Sites(
      link: "https://www.instagram.com/",
      name: "Instagram",
      imgUrls:
          "https://i1.wp.com/globalinfusion.org/wp-content/uploads/2018/01/ig-logo-email.png?ssl=1",
      fav: false),
  Sites(
      link: "https://www.w3schools.com/",
      name: "w3Schools",
      imgUrls:
          "https://th.bing.com/th/id/OIP.R7d8NCcxBD1TRJjRvkHGfwHaHa?pid=ImgDet&rs=1",
      fav: false),
  Sites(
      link: "https://twitter.com/",
      name: "Twitter",
      imgUrls:
          "https://th.bing.com/th/id/OIP.PXTov9TveYX3Upu592UOygHaHa?pid=ImgDet&rs=1",
      fav: false),
];
